.class public Lcom/biznessapps/api/AppFragmentManager;
.super Ljava/lang/Object;
.source "AppFragmentManager.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFragmentByController(Landroid/content/Intent;)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p0, "comingIntent"    # Landroid/content/Intent;

    .prologue
    .line 74
    const-string v3, "TAB_FRAGMENT"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "fragmentExtra":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 76
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "View controller can not be null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_0
    const/4 v1, 0x0

    .line 79
    .local v1, "fragmentToLoad":Landroid/support/v4/app/Fragment;
    const-string v3, "homeviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    new-instance v1, Lcom/biznessapps/fragments/single/HomeFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/HomeFragment;-><init>()V

    .line 193
    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    :cond_1
    :goto_0
    return-object v1

    .line 81
    :cond_2
    const-string v3, "contentchangerviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    new-instance v1, Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/PreviewAppFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 83
    :cond_3
    const-string v3, "webtierviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 84
    const-string v3, "URL"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "url":Ljava/lang/String;
    const-string v3, "http://twitter.com/#!/LuceLadies/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 87
    new-instance v1, Lcom/biznessapps/fragments/twitter/TweetFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/twitter/TweetFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 89
    :cond_4
    new-instance v1, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 91
    .end local v2    # "url":Ljava/lang/String;
    :cond_5
    const-string v3, "webviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 92
    new-instance v1, Lcom/biznessapps/fragments/webview/WebViewFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/webview/WebViewFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 93
    :cond_6
    const-string v3, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 94
    new-instance v1, Lcom/biznessapps/fragments/webview/WebViewFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/webview/WebViewFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 95
    :cond_7
    const-string v3, "messagesviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 96
    new-instance v1, Lcom/biznessapps/fragments/lists/MessageListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/lists/MessageListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 97
    :cond_8
    const-string v3, "VoiceRecordingViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 98
    new-instance v1, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 99
    :cond_9
    const-string v3, "FanWallViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 100
    new-instance v1, Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 101
    :cond_a
    const-string v3, "FAN_ADD_COMMENT_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 102
    new-instance v1, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 103
    :cond_b
    const-string v3, "TWITTER_LOGIN_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 104
    new-instance v1, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 105
    :cond_c
    const-string v3, "rssfeedviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 106
    new-instance v1, Lcom/biznessapps/fragments/single/RssListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/RssListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 107
    :cond_d
    const-string v3, "tipcalculatorviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 108
    new-instance v1, Lcom/biznessapps/fragments/single/TipCalculatorFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 109
    :cond_e
    const-string v3, "RECIPIENTS_LIST_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 110
    new-instance v1, Lcom/biznessapps/fragments/twitter/RecipientsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/twitter/RecipientsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 111
    :cond_f
    const-string v3, "HASH_TAGS_LIST_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 112
    new-instance v1, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 113
    :cond_10
    const-string v3, "GalleryViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "GalleryCoverFlowViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 115
    :cond_11
    new-instance v1, Lcom/biznessapps/fragments/single/GalleryFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/GalleryFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 116
    :cond_12
    const-string v3, "AroundUsViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 117
    new-instance v1, Lcom/biznessapps/fragments/single/AroundUsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/AroundUsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 118
    :cond_13
    const-string v3, "locationviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "locationlistviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 120
    :cond_14
    new-instance v1, Lcom/biznessapps/fragments/contacts/ContactsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/contacts/ContactsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 121
    :cond_15
    const-string v3, "CONTACTS_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 122
    new-instance v1, Lcom/biznessapps/fragments/contacts/ContactsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/contacts/ContactsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 123
    :cond_16
    const-string v3, "QRCouponViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 124
    new-instance v1, Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v3, v1

    .line 125
    check-cast v3, Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->setQrCoupons(Z)V

    goto/16 :goto_0

    .line 126
    :cond_17
    const-string v3, "couponsviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 127
    new-instance v1, Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 128
    :cond_18
    const-string v3, "COUPON_DETAIL_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 129
    new-instance v1, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 130
    :cond_19
    const-string v3, "QRViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 131
    new-instance v1, Lcom/biznessapps/fragments/qr/QrScannerFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/qr/QrScannerFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 132
    :cond_1a
    const-string v3, "QR_SCANNER_HELP_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 133
    new-instance v1, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/qr/QrScannerHelpFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 134
    :cond_1b
    const-string v3, "PodcastViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 135
    new-instance v1, Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 136
    :cond_1c
    const-string v3, "YoutubeViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 137
    new-instance v1, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 138
    :cond_1d
    const-string v3, "YOUTUBE_SINGLE_VIEW_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 139
    new-instance v1, Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 140
    :cond_1e
    const-string v3, "MailingListViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 141
    new-instance v1, Lcom/biznessapps/fragments/single/MailingFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/MailingFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 142
    :cond_1f
    const-string v3, "StatRecorderViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 143
    new-instance v1, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 144
    :cond_20
    const-string v3, "EmailPhotoViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 145
    new-instance v1, Lcom/biznessapps/fragments/single/EmailPhotoFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 146
    :cond_21
    const-string v3, "repaymentviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 147
    new-instance v1, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/MortgageCalculatorFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 148
    :cond_22
    const-string v3, "infodetailviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 149
    new-instance v1, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 150
    :cond_23
    const-string v3, "infosectionviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 151
    new-instance v1, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 152
    :cond_24
    const-string v3, "infoitemsviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 153
    new-instance v1, Lcom/biznessapps/fragments/infoitems/InfoItemsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/infoitems/InfoItemsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 154
    :cond_25
    const-string v3, "eventsviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 155
    new-instance v1, Lcom/biznessapps/fragments/events/EventsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/events/EventsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 156
    :cond_26
    const-string v3, "EVENTS_DETAIL_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 157
    new-instance v1, Lcom/biznessapps/fragments/events/EventDetailsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/events/EventDetailsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 158
    :cond_27
    const-string v3, "menuviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 159
    const-string v3, "MENUITEMID"

    invoke-static {p0, v3}, Lcom/biznessapps/utils/ViewUtils;->hasExtraValue(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 160
    new-instance v1, Lcom/biznessapps/fragments/menuitems/MenuSectionItemsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/menuitems/MenuSectionItemsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 161
    :cond_28
    const-string v3, "MENUITEMDETAILID"

    invoke-static {p0, v3}, Lcom/biznessapps/utils/ViewUtils;->hasExtraValue(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 162
    new-instance v1, Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 164
    :cond_29
    new-instance v1, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 166
    :cond_2a
    const-string v3, "moreviewcontroller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 167
    new-instance v1, Lcom/biznessapps/fragments/single/MoreFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/MoreFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 168
    :cond_2b
    const-string v3, "CallUsViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 169
    new-instance v1, Lcom/biznessapps/fragments/lists/CallUsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/lists/CallUsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 170
    :cond_2c
    const-string v3, "DirectionViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 171
    new-instance v1, Lcom/biznessapps/fragments/lists/DirectionsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/lists/DirectionsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 172
    :cond_2d
    const-string v3, "TellFriendViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 173
    new-instance v1, Lcom/biznessapps/fragments/single/TellFriendsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/TellFriendsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 174
    :cond_2e
    const-string v3, "NotepadListController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 175
    new-instance v1, Lcom/biznessapps/fragments/notepad/NotepadListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/notepad/NotepadListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 176
    :cond_2f
    const-string v3, "NOTEPAD_EDIT_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 177
    new-instance v1, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 178
    :cond_30
    const-string v3, "ProductViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 179
    new-instance v1, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 180
    :cond_31
    const-string v3, "SHOPPPING_CART_PRODUCTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 181
    new-instance v1, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 182
    :cond_32
    const-string v3, "SHOPPPING_CART_PRODUCTS_DETAILS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 183
    new-instance v1, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 184
    :cond_33
    const-string v3, "SHOPPING_CART_CHECKOUT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 185
    new-instance v1, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 186
    :cond_34
    const-string v3, "GOOGLE_CHECKOUT_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 187
    new-instance v1, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 188
    :cond_35
    const-string v3, "LoyaltyTabViewController"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 189
    new-instance v1, Lcom/biznessapps/fragments/loyalty/LoyaltyListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/loyalty/LoyaltyListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 190
    :cond_36
    const-string v3, "LOYALTY_DETAIL_FRAGMENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    new-instance v1, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0
.end method
