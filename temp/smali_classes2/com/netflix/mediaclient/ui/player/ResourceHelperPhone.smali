.class public final Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;
.super Lcom/netflix/mediaclient/ui/player/ResourceHelper;
.source "ResourceHelperPhone.java"


# static fields
.field protected static final PROGRESSBAR_TOP_BOTTOM_PADDING_IN_DIP_PHONE:I = 0x1

.field protected static final TIMELINE_HEIGHT_IN_DIP:I = 0x14

.field protected static final TIMELINE_THUMB_OFFSET_IN_DIP:I = 0xc


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/ResourceHelper;-><init>()V

    .line 34
    const v0, 0x7f02019d

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->pause:I

    .line 35
    const v0, 0x7f02019e

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->play:I

    .line 36
    const v0, 0x7f0201d2

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->zoomIn:I

    .line 37
    const v0, 0x7f0201d3

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->zoomOut:I

    .line 38
    const/16 v0, 0x14

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->timelineHeightInDip:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->timelineHeightPaddingInDip:I

    .line 40
    const/16 v0, 0xc

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/ResourceHelperPhone;->timelineThumbOffsetInDip:I

    .line 41
    return-void
.end method
