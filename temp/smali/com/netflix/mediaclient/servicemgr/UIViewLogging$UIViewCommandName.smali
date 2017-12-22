.class public final enum Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;
.super Ljava/lang/Enum;
.source "UIViewLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum AddCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum PauseDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum RemoveAllCachedVideosCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum RemoveCachedVideoAndPlayNextCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum RemoveCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum ResumeDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum RetryDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum ShowMyDownloads:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum StartCachedPlay:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum acceptTermsOfUse:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum actionBarBackButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum actionBarKidsEntry:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum actionBarKidsExit:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum backButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum changeValue:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum deepLink:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum genreKidsEntry:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum mementoGoToRDP:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum mementoRDPRelatedExpand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum mementoRDPRelatedExpandedAdd:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum mementoRDPRelatedExpandedGoToDP:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum mementoRelatedHero:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum mementoRelatedInset:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum mementoRelatedMore:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum mementoRelatedMoreGoToDP:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum mementoTabCast:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum mementoTabRelated:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum moreButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum notifyUms:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum optInButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum recommendSheet:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum search:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum select:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum shareOpenSheet:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum shareSheet:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum skipCreditsButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum slidingMenuClosed:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum slidingMenuKidsEntry:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum slidingMenuKidsExit:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum slidingMenuOpened:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum startPlay:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum surveyButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum upButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum viewMenu:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field public static final enum viewTitleDetails:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "moreButton"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->moreButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 90
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "upButton"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->upButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "backButton"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->backButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 92
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "optInButton"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->optInButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 94
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "actionBarBackButton"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->actionBarBackButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "actionBarKidsEntry"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->actionBarKidsEntry:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "actionBarKidsExit"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->actionBarKidsExit:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 98
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "slidingMenuKidsEntry"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->slidingMenuKidsEntry:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "slidingMenuKidsExit"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->slidingMenuKidsExit:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 100
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "slidingMenuOpened"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->slidingMenuOpened:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "slidingMenuClosed"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->slidingMenuClosed:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 103
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "genreKidsEntry"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->genreKidsEntry:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 105
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "deepLink"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->deepLink:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 107
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "shareSheet"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->shareSheet:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 108
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "shareOpenSheet"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->shareOpenSheet:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 109
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "recommendSheet"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->recommendSheet:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 111
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "viewMenu"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->viewMenu:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "startPlay"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->startPlay:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 113
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "viewTitleDetails"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->viewTitleDetails:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "search"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->search:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 115
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "changeValue"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->changeValue:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "surveyButton"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->surveyButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 117
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "select"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->select:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 119
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "mementoTabCast"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoTabCast:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 120
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "mementoTabRelated"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoTabRelated:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 121
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "mementoRelatedHero"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRelatedHero:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 122
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "mementoRelatedInset"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRelatedInset:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "mementoRelatedMore"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRelatedMore:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 124
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "mementoRelatedMoreGoToDP"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRelatedMoreGoToDP:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 125
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "mementoGoToRDP"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoGoToRDP:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 126
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "mementoRDPRelatedExpand"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRDPRelatedExpand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 127
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "mementoRDPRelatedExpandedAdd"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRDPRelatedExpandedAdd:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "mementoRDPRelatedExpandedGoToDP"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRDPRelatedExpandedGoToDP:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 131
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "AddCachedVideoCommand"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->AddCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 132
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "RemoveCachedVideoCommand"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->RemoveCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 133
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "RemoveAllCachedVideosCommand"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->RemoveAllCachedVideosCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 134
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "RemoveCachedVideoAndPlayNextCommand"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->RemoveCachedVideoAndPlayNextCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 135
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "PauseDownloadCommand"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->PauseDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 136
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "ResumeDownloadCommand"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->ResumeDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 137
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "RetryDownloadCommand"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->RetryDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 138
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "StartCachedPlay"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->StartCachedPlay:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 139
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "ShowMyDownloads"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->ShowMyDownloads:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 142
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "acceptTermsOfUse"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->acceptTermsOfUse:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 143
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "notifyUms"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->notifyUms:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 145
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    const-string/jumbo v1, "skipCreditsButton"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->skipCreditsButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 88
    const/16 v0, 0x2d

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->moreButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->upButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->backButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->optInButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->actionBarBackButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->actionBarKidsEntry:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->actionBarKidsExit:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->slidingMenuKidsEntry:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->slidingMenuKidsExit:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->slidingMenuOpened:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->slidingMenuClosed:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->genreKidsEntry:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->deepLink:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->shareSheet:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->shareOpenSheet:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->recommendSheet:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->viewMenu:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->startPlay:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->viewTitleDetails:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->search:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->changeValue:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->surveyButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->select:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoTabCast:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoTabRelated:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRelatedHero:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRelatedInset:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRelatedMore:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRelatedMoreGoToDP:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoGoToRDP:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRDPRelatedExpand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRDPRelatedExpandedAdd:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRDPRelatedExpandedGoToDP:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->AddCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->RemoveCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->RemoveAllCachedVideosCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->RemoveCachedVideoAndPlayNextCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->PauseDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->ResumeDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->RetryDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->StartCachedPlay:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->ShowMyDownloads:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->acceptTermsOfUse:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->notifyUms:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->skipCreditsButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    return-object v0
.end method
