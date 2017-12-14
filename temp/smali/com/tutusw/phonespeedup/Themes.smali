.class public Lcom/tutusw/phonespeedup/Themes;
.super Ljava/lang/Object;
.source "Themes.java"


# static fields
.field public static final COLOR_BLACK:I = -0x1000000

.field public static final COLOR_BLUE:I = -0xffff01

.field public static final COLOR_CYAN:I = -0xff0001

.field public static final COLOR_DROIDGREEN:I = -0x5b39c7

.field public static final COLOR_GRAY:I = -0xcccccd

.field public static final COLOR_GREEN:I = -0xff0100

.field public static final COLOR_RED:I = -0x200000

.field public static final COLOR_STEEL:I = -0x8f7f70

.field public static final COLOR_WHITE:I = -0x1

.field public static final COLOR_YELLOW:I = -0x100

.field public static final SEEKBAR_BLUE:I = 0x0

.field public static final SEEKBAR_GRAY:I = 0x1

.field public static final SEEKBAR_GREEN:I = 0x3

.field public static final SEEKBAR_RED:I = 0x4

.field public static final WIDGETBACK_BLACK:I = 0x0

.field public static final WIDGETBACK_BLUE:I = 0x5

.field public static final WIDGETBACK_CLEAR:I = 0x2

.field public static final WIDGETBACK_GREEN:I = 0x4

.field public static final WIDGETBACK_LIGHT:I = 0x1

.field public static final WIDGETBACK_RED:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSeekDrawableById(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    const v0, 0x7f020009

    .line 28
    packed-switch p0, :pswitch_data_0

    .line 33
    :goto_0
    :pswitch_0
    return v0

    .line 29
    :pswitch_1
    const v0, 0x7f020007

    goto :goto_0

    .line 30
    :pswitch_2
    const v0, 0x7f020008

    goto :goto_0

    .line 32
    :pswitch_3
    const v0, 0x7f02000a

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static final getWidgetBackById(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    const v0, 0x7f030010

    .line 38
    packed-switch p0, :pswitch_data_0

    .line 45
    :goto_0
    :pswitch_0
    return v0

    .line 40
    :pswitch_1
    const v0, 0x7f030014

    goto :goto_0

    .line 41
    :pswitch_2
    const v0, 0x7f030012

    goto :goto_0

    .line 42
    :pswitch_3
    const v0, 0x7f030015

    goto :goto_0

    .line 43
    :pswitch_4
    const v0, 0x7f030013

    goto :goto_0

    .line 44
    :pswitch_5
    const v0, 0x7f030011

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
