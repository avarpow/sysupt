<?php
require_once("include/bittorrent.php");
require_once("include/tjuip_helper.php");
dbconn();
require_once(get_langfile_path());
loggedinorreturn();
global $enablespecial, $torrentmanage_class, $movetorrent_class, $smalldescription_main, $torrentsticky_class, $enablenfo_main, $viewnfo_class, $beanonymous_class;

$id = 0 + $_GET ['id'];
if (!$id)
    die ();

$res = sql_query("SELECT torrents.*, categories.mode as cat_mode FROM torrents LEFT JOIN categories ON category = categories.id WHERE torrents.id = $id");
$row = mysql_fetch_array($res);
if (!$row)
    die ();

if ($enablespecial == 'yes' && get_user_class() >= $movetorrent_class)
    $allowmove = true; // enable moving torrent to other section
else
    $allowmove = false;

$sectionmode = $row ['cat_mode'];
if ($sectionmode == $browsecatmode) {
    $othermode = $specialcatmode;
    $movenote = $lang_edit ['text_move_to_special'];
} else {
    $othermode = $browsecatmode;
    $movenote = $lang_edit ['text_move_to_browse'];
}

$showsource = (get_searchbox_value($sectionmode, 'showsource') || ($allowmove && get_searchbox_value($othermode, 'showsource'))); // whether
// show
// sources
// or
// not
$showmedium = (get_searchbox_value($sectionmode, 'showmedium') || ($allowmove && get_searchbox_value($othermode, 'showmedium'))); // whether
// show
// media
// or
// not
$showcodec = (get_searchbox_value($sectionmode, 'showcodec') || ($allowmove && get_searchbox_value($othermode, 'showcodec'))); // whether
// show
// codecs
// or
// not
$showstandard = (get_searchbox_value($sectionmode, 'showstandard') || ($allowmove && get_searchbox_value($othermode, 'showstandard'))); // whether
// show
// standards
// or
// not
$showprocessing = (get_searchbox_value($sectionmode, 'showprocessing') || ($allowmove && get_searchbox_value($othermode, 'showprocessing'))); // whether
// show
// processings
// or
// not
$showteam = (get_searchbox_value($sectionmode, 'showteam') || ($allowmove && get_searchbox_value($othermode, 'showteam'))); // whether
// show
// teams
// or
// not
$showaudiocodec = (get_searchbox_value($sectionmode, 'showaudiocodec') || ($allowmove && get_searchbox_value($othermode, 'showaudiocodec'))); // whether
// show
// audio
// codecs
// or
// not

stdhead($lang_edit ['head_edit_torrent'] . "\"" . $row ["name"] . "\"");

if (!isset ($CURUSER) || ($CURUSER ["id"] != $row ["owner"] && get_user_class() < $torrentmanage_class)) {
    print ("<h1 align=\"center\">" . $lang_edit ['text_cannot_edit_torrent'] . "</h1>");
    print ("<p>" . $lang_edit ['text_cannot_edit_torrent_note'] . "</p>");
} else {
    print ("<form method=\"post\" id=\"compose\" name=\"edittorrent\" action=\"takeedit.php\" enctype=\"multipart/form-data\" onsubmit=\"return validate('oricat')\">");
    print ("<input type=\"hidden\" name=\"id\" value=\"$id\" />");
    if (isset ($_GET ["returnto"]))
        print ("<input type=\"hidden\" name=\"returnto\" value=\"" . htmlspecialchars($_GET ["returnto"]) . "\" />");
    print ("<table border=\"1\" cellspacing=\"0\" cellpadding=\"5\" width=\"940\">\n");
    print ("<tr><td class='colhead' colspan='2' align='center'>" . htmlspecialchars($row ["name"]) . "</td></tr>");
    // tr($lang_edit['row_torrent_name']."<font color=\"red\">*</font>", "<input
    // type=\"text\" style=\"width: 650px;\" name=\"name\" value=\"" .
    // htmlspecialchars($row["name"]) . "\" />", 1);

    $cattry = $row ["category"];
    if ($cattry == 4013)
        $s = "<select name=\"type\" id=\"oricat\" value=\"4013\" onChange=\"getcategory('class1','oricat')\" disabled=\"true\"> ";
    else
        $s = "<select name=\"type\" id=\"oricat\" onChange=\"getcategory('class1','oricat')\">";

    $cats = genrelist($sectionmode);
    foreach ($cats as $subrow) {
        $s .= "<option value=\"" . $subrow ["id"] . "\"";
        if ($subrow ["id"] == $row ["category"])
            $s .= " selected=\"selected\"";
        $s .= ">" . htmlspecialchars($subrow ["name"]) . "</option>\n";
    }

    if ($cattry == 4013)
        $s .= "</select><div id=\"class1\" ></div><input type=\"hidden\" name=\"type\" value=\"4013\"> \n";
    else
        $s .= "</select><div id=\"class1\" ></div>\n";
    if ($allowmove) {
        $s2 = "<select name=\"type\" id=newcat disabled>\n";
        $cats2 = genrelist($othermode);
        foreach ($cats2 as $subrow) {
            $s2 .= "<option value=\"" . $subrow ["id"] . "\"";
            if ($subrow ["id"] == $row ["category"])
                $s2 .= " selected=\"selected\"";
            $s2 .= ">" . htmlspecialchars($subrow ["name"]) . "</option>\n";
        }
        $s2 .= "</select>\n";
        $movecheckbox = "<input type=\"checkbox\" id=movecheck name=\"movecheck\" value=\"1\" onclick=\"disableother2('oricat','newcat')\" />";
    }
    tr($lang_edit ['row_type'] . "<font color=\"red\">*</font>", $s . ($allowmove ? "&nbsp;&nbsp;" . $movecheckbox . $movenote . $s2 : ""), 1);

    if ($smalldescription_main == 'yes')
        tr($lang_edit ['row_small_description'], "<input type=\"text\" style=\"width: 650px;\" name=\"small_descr\" value=\"" . htmlspecialchars($row ["small_descr"]) . "\" />", 1);

    get_external_tr($row ["url"]);

    if ($enablenfo_main == 'yes')
        tr($lang_edit ['row_nfo_file'], "<font class=\"medium\"><input type=\"radio\" name=\"nfoaction\" value=\"keep\" checked=\"checked\" />" . $lang_edit ['radio_keep_current'] . "<input type=\"radio\" name=\"nfoaction\" value=\"remove\" />" . $lang_edit ['radio_remove'] . "<input id=\"nfoupdate\" type=\"radio\" name=\"nfoaction\" value=\"update\" />" . $lang_edit ['radio_update'] . "</font><br /><input type=\"file\" name=\"nfo\" onchange=\"document.getElementById('nfoupdate').checked=true\" />", 1);
    print ("<tr><td class=\"rowhead\">" . $lang_edit ['row_description'] . "<font color=\"red\">*</font></td><td class=\"rowfollow\">");
    textbbcode("edittorrent", "descr", ($row ["descr"]), false);
    print ("</td></tr>");

    if ($showsource || $showmedium || $showcodec || $showaudiocodec || $showstandard || $showprocessing) {
        if ($showsource) {
            $source_select = torrent_selection($lang_edit ['text_source'], "source_sel", "sources", $row ["source"]);
        } else
            $source_select = "";

        if ($showmedium) {
            $medium_select = torrent_selection($lang_edit ['text_medium'], "medium_sel", "media", $row ["medium"]);
        } else
            $medium_select = "";

        if ($showcodec) {
            $codec_select = torrent_selection($lang_edit ['text_codec'], "codec_sel", "codecs", $row ["codec"]);
        } else
            $codec_select = "";

        if ($showaudiocodec) {
            $audiocodec_select = torrent_selection($lang_edit ['text_audio_codec'], "audiocodec_sel", "audiocodecs", $row ["audiocodec"]);
        } else
            $audiocodec_select = "";

        if ($showstandard) {
            $standard_select = torrent_selection($lang_edit ['text_standard'], "standard_sel", "standards", $row ["standard"]);
        } else
            $standard_select = "";

        if ($showprocessing) {
            $processing_select = torrent_selection($lang_edit ['text_processing'], "processing_sel", "processings", $row ["processing"]);
        } else
            $processing_select = "";

        tr($lang_edit ['row_quality'], $source_select . $medium_select . $codec_select . $audiocodec_select . $standard_select . $processing_select, 1);
    }

    if ($showteam) {
        if ($showteam) {
            $team_select = torrent_selection($lang_edit ['text_team'], "team_sel", "teams", $row ["team"]);
        } else
            $showteam = "";

        tr($lang_edit ['row_content'], $team_select, 1);
    }
    tr($lang_edit ['row_check'], "<input type=\"checkbox\" name=\"visible\"" . ($row ["visible"] == "yes" ? " checked=\"checked\"" : "") . " value=\"1\" /> " . $lang_edit ['checkbox_visible'] . "&nbsp;&nbsp;&nbsp;" . (get_user_class() >= $beanonymous_class || get_user_class() >= $torrentmanage_class ? "<input type=\"checkbox\" name=\"anonymous\"" . ($row ["anonymous"] == "yes" ? " checked=\"checked\"" : "") . " value=\"1\" />" . $lang_edit ['checkbox_anonymous_note'] . "&nbsp;&nbsp;&nbsp;" : "") . (get_user_class() >= $torrentmanage_class ? "<input type=\"checkbox\" name=\"banned\"" . (($row ["banned"] == "yes") ? " checked=\"checked\"" : "") . " value=\"yes\" /> " . $lang_edit ['checkbox_banned'] : "") . (get_user_class() >= UC_UPLOADER ? "<br />" . "<input type = \"checkbox\" name = \"exclusive\" " . ($row ["exclusive"] == "yes" ? " checked=\"checked\"" : "") . " value = \"yes\" />" . $lang_edit ['checkbox_exclusive'] . "&nbsp;&nbsp;&nbsp;" . "<input type = \"checkbox\" name = \"tjuptrip\"" . ($row ["tjuptrip"] == "yes" ? " checked=\"checked\"" : "") . " value = \"yes\" />" . $lang_edit ['checkbox_tjuptrip'] : ""), 1);
    if (get_user_class() >= $torrentsticky_class || (get_user_class() >= $torrentmanage_class && $CURUSER ["picker"] == 'yes')) {
        global $expirehalfleech_torrent, $expirefree_torrent, $expiretwoup_torrent, $expiretwoupfree_torrent, $expiretwouphalfleech_torrent, $expirethirtypercentleech_torrent, $expirenormal_torrent, $hotdays_torrent, $hotseeder_torrent, $halfleechbecome_torrent, $freebecome_torrent, $twoupbecome_torrent, $twoupfreebecome_torrent, $twouphalfleechbecome_torrent, $thirtypercentleechbecome_torrent, $normalbecome_torrent, $deldeadtorrent_torrent;
        $promotionuntil_torrent = array(
            $expirenormal_torrent,
            $expirefree_torrent,
            $expiretwoup_torrent,
            $expiretwoupfree_torrent,
            $expirehalfleech_torrent,
            $expiretwouphalfleech_torrent,
            $expirethirtypercentleech_torrent
        );
        $promotionuntil_torrent = join(',', $promotionuntil_torrent);

        $pickcontent = "";

        if (get_user_class() >= $torrentsticky_class) {
            $pickcontent .= "<b>" . $lang_edit ['row_special_torrent'] . ":&nbsp;</b>" . "<select id=\"sel_spstate\" name=\"sel_spstate\" style=\"width: 100px;\" onchange=\"getpromotionuntil('$promotionuntil_torrent', 'sel_spstate')\">" . promotion_selection($row ["sp_state"], 0) . "</select>&nbsp;&nbsp;&nbsp;";
            // $pickcontent .= "" . "<select id='promotion_time_type'
            // name=\"promotion_time_type\" style=\"width: 100px;\">" .
            // "<option" . (($row ["promotion_time_type"] == "0") ? "
            // selected=\"selected\"" : "") . " value=\"0\">使用全局设置</option>" .
            // "<option" . (($row ["promotion_time_type"] == "1") ? "
            // selected=\"selected\"" : "") . " value=\"1\">永久</option>" .
            // "<option" . (($row ["promotion_time_type"] == "2") ? "
            // selected=\"selected\"" : "") . " value=\"2\">直到</option>" .
            // "</select>&nbsp;&nbsp;&nbsp;";
            if ($row ["promotion_time_type"] == 0) {
                if ($row ["sp_state"] < 8) {
                    $promotionuntil_time = date("Y-m-d H:i:s", strtotime($row ["sp_time"]) + 2 * 24 * 3600);
                } elseif ($row ["sp_state"] > 7 && $row ["sp_state"] < 14) {
                    $promotionuntil_time = $row ["promotion_until"];
                } else {
                    $promotionuntil_time = date("Y-m-d H:i:s", time() + 2 * 24 * 3600);
                }
            }
            $pickcontent .= '<label id="sp-expire"><b>促销截止:&nbsp;</b><input type="text" name="promotionuntil" id="promotionuntil" value="' . (($row ["promotion_time_type"] == 0) ? $promotionuntil_time : $row ["promotion_until"]) . '" /></label>&nbsp;&nbsp;&nbsp;';
            $pickcontent .= '</br>';
            // 置顶处理 beg
            require_once(get_langfile_path('pickup.php'));
            $pickcontent .= "<b>" . $lang_pickup ['row_torrent_position'] . ":&nbsp;</b>";
            $pickcontent .= "<select name=\"sel_posstate\" style=\"width: 100px;\">";
            $pickcontent .= "<option" . (($row ["pos_state"] == "normal") ? " selected=\"selected\"" : "") . " value=\"0\">" . $lang_pickup ['select_normal'] . "</option>";
            $pickcontent .= "<option" . (($row ["pos_state"] == "sticky") ? " selected=\"selected\"" : "") . " value=\"1\">" . $lang_pickup ['select_sticky'] . "</option>";
            $pickcontent .= "<option" . (($row ["pos_state"] == "double_sticky") ? " selected=\"selected\"" : "") . " value=\"2\">" . $lang_pickup ['select_double_sticky'] . "</option>";
            $pickcontent .= "<option" . (($row ["pos_state"] == "triple_sticky") ? " selected=\"selected\"" : "") . " value=\"3\">" . $lang_pickup ['select_triple_sticky'] . "</option>";
            $pickcontent .= "</select>&nbsp;&nbsp;&nbsp;";
            // 置顶处理 end
            $pickcontent .= '<label id="pos-expire"><b>置顶截止:&nbsp;</b><input type="text" name="posstateuntil" id="posstateuntil" value="' . (($row ["pos_state"] != "sticky") ? date("Y-m-d H:i:s", time() + 2 * 24 * 3600) : $row ["pos_state_until"]) . '" /></label>&nbsp;&nbsp;&nbsp;';
        }
        // if(get_user_class()>=$torrentmanage_class && $CURUSER["picker"] ==
        // 'yes')
        if (get_user_class() >= $torrentmanage_class || $CURUSER ["picker"] == 'yes') {
            $pickcontent .= "<b>" . $lang_edit ['row_recommended_movie'] . ":&nbsp;</b>" . "<select name=\"sel_recmovie\" style=\"width: 100px;\">" . "<option" . (($row ["picktype"] == "normal") ? " selected=\"selected\"" : "") . " value=\"0\">" . $lang_edit ['select_normal'] . "</option>" . "<option" . (($row ["picktype"] == "hot") ? " selected=\"selected\"" : "") . " value=\"1\">" . $lang_edit ['select_hot'] . "</option>" . "<option" . (($row ["picktype"] == "classic") ? " selected=\"selected\"" : "") . " value=\"2\">" . $lang_edit ['select_classic'] . "</option>" . "<option" . (($row ["picktype"] == "recommended") ? " selected=\"selected\"" : "") . " value=\"3\">" . $lang_edit ['select_recommended'] . "</option>" . "<option" . (($row ["picktype"] == "0day") ? " selected=\"selected\"" : "") . " value=\"4\">0day</option>" . "<option" . (($row ["picktype"] == "IMDB") ? " selected=\"selected\"" : "") . " value=\"5\">IMDB TOP 250</option>" . "</select>";
        }
        tr($lang_edit ['row_pick'], $pickcontent, 1);
    }

    print ("<tr><td class=\"toolbox\" colspan=\"2\" align=\"center\"><input id=\"qr\" type=\"submit\" value=\"" . $lang_edit ['submit_edit_it'] . "\" /> <input type=\"reset\" value=\"" . $lang_edit ['submit_revert_changes'] . "\" /></td></tr>\n");
    print ("</table>\n");
    print ("</form>\n");
    print ("<br /><br />");
    print ("<form method=\"post\" action=\"delete.php\">\n");
    print ("<input type=\"hidden\" name=\"id\" value=\"$id\" />\n");
    if (isset ($_GET ["returnto"]))
        print ("<input type=\"hidden\" name=\"returnto\" value=\"" . htmlspecialchars($_GET ["returnto"]) . "\" />\n");
    print ("<table border=\"1\" cellspacing=\"0\" cellpadding=\"5\">\n");
    print ("<tr><td class=\"colhead\" align=\"left\" style='padding-bottom: 3px' colspan=\"2\">" . $lang_edit ['text_delete_torrent'] . "</td></tr>");
    tr("<input name=\"reasontype\" type=\"radio\" value=\"1\" />&nbsp;" . $lang_edit ['radio_dead'], $lang_edit ['text_dead_note'], 1);
    tr("<input name=\"reasontype\" type=\"radio\" value=\"2\" />&nbsp;" . $lang_edit ['radio_dupe'], "<input type=\"text\" style=\"width: 200px\" name=\"reason[]\" />", 1);
    tr("<input name=\"reasontype\" type=\"radio\" value=\"3\" />&nbsp;" . $lang_edit ['radio_nuked'], "<input type=\"text\" style=\"width: 200px\" name=\"reason[]\" />", 1);
    tr("<input name=\"reasontype\" type=\"radio\" value=\"4\" />&nbsp;" . $lang_edit ['radio_rules'], "<input type=\"text\" style=\"width: 200px\" name=\"reason[]\" />" . $lang_edit ['text_req'], 1);
    print ("<tr><td class=\"rowhead nowrap\" valign=\"top\" align=\"right\"><input name=\"reasontype\" type=\"radio\" value=\"5\" />&nbsp;合集</td><td class=\"rowfollow\" valign=\"top\" align=\"left\"> 合集已出，删除单集和小合集，感谢您对SYSUPT的贡献。</td></tr>");
    tr("<input name=\"reasontype\" type=\"radio\" value=\"6\" checked=\"checked\" />&nbsp;" . $lang_edit ['radio_other'], "<input type=\"text\" style=\"width: 200px\" name=\"reason[]\" />" . $lang_edit ['text_req'], 1);
    print ("<tr><td class=\"toolbox\" colspan=\"2\" align=\"center\"><input type=\"submit\" style='height: 25px' value=\"" . $lang_edit ['submit_delete_it'] . "\" /></td></tr>\n");
    print ("</table>");
    print ("</form>\n");

    print ('<script type="text/javascript">
$(function(){
	$("#posstateuntil").datetimepicker({dateFormat: "yy-mm-dd", showSecond: true, timeFormat:"hh:mm:ss", minDate: new Date()});
	$("#promotionuntil").datetimepicker({dateFormat: "yy-mm-dd", showSecond: true, timeFormat:"hh:mm:ss", minDate: new Date()});
});
function getpromotionuntil(arr, selectid){
	var promotionid = document.getElementById(selectid).value;
	var arr2 = arr.split(",");
	if(promotionid>0 && promotionid<8){
		$("#promotionuntil").datetimepicker("setDate", (new Date(new Date().getTime() + arr2[promotionid-1]*86400*1000)));
	} else if (promotionid>7 && promotionid<14) {
	}
}	
</script>');
}
stdfoot();
