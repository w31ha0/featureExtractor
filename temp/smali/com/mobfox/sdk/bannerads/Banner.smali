.class public Lcom/mobfox/sdk/bannerads/Banner;
.super Landroid/widget/RelativeLayout;
.source "Banner.java"


# static fields
.field public static DEBUG_MODE:Z = false

.field private static final LAYOUT_READY_INTERVAL:J = 0xc8L

.field public static LOAD_START:Ljava/lang/String; = null

.field static O_ANDADVID:Ljava/lang/String; = null

.field private static final WATERFALLS_QUERY_TIMEOUT:I = 0x3e8

.field static dev_js:I

.field public static loc:Z

.field static secure:Z

.field static warmedUp:Ljava/lang/Boolean;


# instance fields
.field adFormat:Ljava/lang/String;

.field adspace_height:I

.field adspace_strict:I

.field adspace_width:I

.field auto_pilot:Z

.field autoplay:Ljava/lang/String;

.field banner_pos:I

.field context:Landroid/content/Context;

.field debug:Z

.field demo_age:I

.field demo_gender:Ljava/lang/String;

.field demo_keywords:Ljava/lang/String;

.field dev_dnt:I

.field handler:Landroid/os/Handler;

.field hasLayout:Z

.field iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

.field listener:Lcom/mobfox/sdk/bannerads/BannerListener;

.field loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

.field loadStart:J

.field location:Landroid/location/Location;

.field locationService:Lcom/mobfox/sdk/services/MobFoxLocationService;

.field public mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

.field r_floor:F

.field private refresh:I

.field repeater:Lcom/mobfox/sdk/runnables/Repeater;

.field rt:Ljava/lang/String;

.field s:Ljava/lang/String;

.field self:Lcom/mobfox/sdk/bannerads/Banner;

.field skip:Z

.field public smart:Z

.field start_muted:Z

.field sub_bundle_id:Ljava/lang/String;

.field timeout:Lcom/mobfox/sdk/runnables/Timeout;

.field type:Ljava/lang/String;

.field v_dur_max:I

.field v_dur_min:I

.field waterfalls:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/mobfox/sdk/bannerads/Banner;->O_ANDADVID:Ljava/lang/String;

    .line 61
    sput-boolean v1, Lcom/mobfox/sdk/bannerads/Banner;->DEBUG_MODE:Z

    .line 93
    sput-boolean v1, Lcom/mobfox/sdk/bannerads/Banner;->secure:Z

    .line 99
    sput-boolean v1, Lcom/mobfox/sdk/bannerads/Banner;->loc:Z

    .line 102
    const/4 v0, 0x1

    sput v0, Lcom/mobfox/sdk/bannerads/Banner;->dev_js:I

    .line 117
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/mobfox/sdk/bannerads/Banner;->warmedUp:Ljava/lang/Boolean;

    .line 122
    const-string v0, "MobFoxBanner >> banner load start"

    sput-object v0, Lcom/mobfox/sdk/bannerads/Banner;->LOAD_START:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->waterfalls:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->s:Ljava/lang/String;

    .line 82
    const-string v0, "waterfall"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->type:Ljava/lang/String;

    .line 83
    const-string v0, "banner"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->adFormat:Ljava/lang/String;

    .line 84
    const-string v0, "true"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->autoplay:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_gender:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_keywords:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->sub_bundle_id:Ljava/lang/String;

    .line 88
    const-string v0, "android_app"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->rt:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->auto_pilot:Z

    .line 91
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->skip:Z

    .line 92
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->debug:Z

    .line 94
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->start_muted:Z

    .line 96
    new-instance v0, Lcom/mobfox/sdk/runnables/Timeout;

    invoke-direct {v0, v2, v2}, Lcom/mobfox/sdk/runnables/Timeout;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    .line 97
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->hasLayout:Z

    .line 100
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->smart:Z

    .line 104
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    .line 105
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    .line 106
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_min:I

    .line 107
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_max:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->r_floor:F

    .line 109
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_age:I

    .line 110
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->banner_pos:I

    .line 111
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->dev_dnt:I

    .line 115
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_strict:I

    .line 118
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->refresh:I

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->loadStart:J

    .line 161
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    .line 162
    iput-object p0, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->handler:Landroid/os/Handler;

    .line 164
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->setUp()V

    .line 165
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->init()V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->waterfalls:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->s:Ljava/lang/String;

    .line 82
    const-string v0, "waterfall"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->type:Ljava/lang/String;

    .line 83
    const-string v0, "banner"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->adFormat:Ljava/lang/String;

    .line 84
    const-string v0, "true"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->autoplay:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_gender:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_keywords:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->sub_bundle_id:Ljava/lang/String;

    .line 88
    const-string v0, "android_app"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->rt:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->auto_pilot:Z

    .line 91
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->skip:Z

    .line 92
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->debug:Z

    .line 94
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->start_muted:Z

    .line 96
    new-instance v0, Lcom/mobfox/sdk/runnables/Timeout;

    invoke-direct {v0, v2, v2}, Lcom/mobfox/sdk/runnables/Timeout;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    .line 97
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->hasLayout:Z

    .line 100
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->smart:Z

    .line 104
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    .line 105
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    .line 106
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_min:I

    .line 107
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_max:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->r_floor:F

    .line 109
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_age:I

    .line 110
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->banner_pos:I

    .line 111
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->dev_dnt:I

    .line 115
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_strict:I

    .line 118
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->refresh:I

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->loadStart:J

    .line 195
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    .line 196
    iput p2, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    .line 197
    iput p3, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    .line 198
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v1, p2

    invoke-static {v1, p1}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->convertDpToPixel(FLandroid/content/Context;)I

    move-result v1

    int-to-float v2, p3

    invoke-static {v2, p1}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->convertDpToPixel(FLandroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mobfox/sdk/bannerads/Banner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iput-object p0, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->handler:Landroid/os/Handler;

    .line 201
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->setUp()V

    .line 202
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->init()V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->waterfalls:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->s:Ljava/lang/String;

    .line 82
    const-string v0, "waterfall"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->type:Ljava/lang/String;

    .line 83
    const-string v0, "banner"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->adFormat:Ljava/lang/String;

    .line 84
    const-string v0, "true"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->autoplay:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_gender:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_keywords:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->sub_bundle_id:Ljava/lang/String;

    .line 88
    const-string v0, "android_app"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->rt:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->auto_pilot:Z

    .line 91
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->skip:Z

    .line 92
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->debug:Z

    .line 94
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->start_muted:Z

    .line 96
    new-instance v0, Lcom/mobfox/sdk/runnables/Timeout;

    invoke-direct {v0, v2, v2}, Lcom/mobfox/sdk/runnables/Timeout;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    .line 97
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->hasLayout:Z

    .line 100
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->smart:Z

    .line 104
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    .line 105
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    .line 106
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_min:I

    .line 107
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_max:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->r_floor:F

    .line 109
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_age:I

    .line 110
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->banner_pos:I

    .line 111
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->dev_dnt:I

    .line 115
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_strict:I

    .line 118
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->refresh:I

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->loadStart:J

    .line 170
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    .line 171
    iput-object p0, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->handler:Landroid/os/Handler;

    .line 174
    invoke-virtual {p0, p2}, Lcom/mobfox/sdk/bannerads/Banner;->getAttrs(Landroid/util/AttributeSet;)V

    .line 176
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->setUp()V

    .line 177
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->init()V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->waterfalls:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->s:Ljava/lang/String;

    .line 82
    const-string v0, "waterfall"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->type:Ljava/lang/String;

    .line 83
    const-string v0, "banner"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->adFormat:Ljava/lang/String;

    .line 84
    const-string v0, "true"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->autoplay:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_gender:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_keywords:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->sub_bundle_id:Ljava/lang/String;

    .line 88
    const-string v0, "android_app"

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->rt:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->auto_pilot:Z

    .line 91
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->skip:Z

    .line 92
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->debug:Z

    .line 94
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->start_muted:Z

    .line 96
    new-instance v0, Lcom/mobfox/sdk/runnables/Timeout;

    invoke-direct {v0, v2, v2}, Lcom/mobfox/sdk/runnables/Timeout;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    .line 97
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->hasLayout:Z

    .line 100
    iput-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->smart:Z

    .line 104
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    .line 105
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    .line 106
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_min:I

    .line 107
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_max:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->r_floor:F

    .line 109
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_age:I

    .line 110
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->banner_pos:I

    .line 111
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->dev_dnt:I

    .line 115
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_strict:I

    .line 118
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->refresh:I

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->loadStart:J

    .line 182
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    .line 183
    iput-object p0, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->handler:Landroid/os/Handler;

    .line 186
    invoke-virtual {p0, p2}, Lcom/mobfox/sdk/bannerads/Banner;->getAttrs(Landroid/util/AttributeSet;)V

    .line 188
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->setUp()V

    .line 189
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->init()V

    .line 190
    return-void
.end method

.method private isInterstitial()Z
    .locals 3

    .prologue
    const/16 v2, 0x1e0

    const/16 v1, 0x140

    .line 533
    iget v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    if-ne v0, v2, :cond_2

    .line 535
    :cond_1
    const/4 v0, 0x1

    .line 538
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logTime(Ljava/lang/String;J)V
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "start"    # J

    .prologue
    .line 687
    :try_start_0
    const-string v0, "MobFoxTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setDev_js(I)V
    .locals 0
    .param p0, "dev_js"    # I

    .prologue
    .line 828
    sput p0, Lcom/mobfox/sdk/bannerads/Banner;->dev_js:I

    .line 829
    return-void
.end method

.method public static setLoc(Z)V
    .locals 0
    .param p0, "loc"    # Z

    .prologue
    .line 824
    sput-boolean p0, Lcom/mobfox/sdk/bannerads/Banner;->loc:Z

    .line 825
    return-void
.end method

.method public static setSecure(Z)V
    .locals 0
    .param p0, "secure"    # Z

    .prologue
    .line 807
    sput-boolean p0, Lcom/mobfox/sdk/bannerads/Banner;->secure:Z

    .line 808
    invoke-static {p0}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setSecure(Z)V

    .line 809
    return-void
.end method

.method public static warmUp(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    sget-object v5, Lcom/mobfox/sdk/bannerads/Banner;->warmedUp:Ljava/lang/Boolean;

    monitor-enter v5

    .line 128
    :try_start_0
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v4

    if-nez v4, :cond_0

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v6, "mobfox-http"

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v0, "httpCacheDir":Ljava/io/File;
    const-wide/32 v2, 0xa00000

    .line 131
    .local v2, "httpCacheSize":J
    invoke-static {v0, v2, v3}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    .line 134
    .end local v0    # "httpCacheDir":Ljava/io/File;
    .end local v2    # "httpCacheSize":J
    :cond_0
    sget-object v4, Lcom/mobfox/sdk/bannerads/Banner;->warmedUp:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_0
    return-void

    .line 136
    :cond_1
    :try_start_2
    new-instance v4, Lcom/mobfox/sdk/networking/MobFoxRequest;

    const-string v6, "http://sdk.starbolt.io/dist/mobfox.html"

    invoke-direct {v4, p0, v6}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/mobfox/sdk/networking/MobFoxRequest;->get(Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 137
    new-instance v4, Lcom/mobfox/sdk/networking/MobFoxRequest;

    const-string v6, "http://sdk.starbolt.io/dist/WebViewJavascriptBridge.js"

    invoke-direct {v4, p0, v6}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/mobfox/sdk/networking/MobFoxRequest;->get(Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 138
    new-instance v4, Lcom/mobfox/sdk/networking/MobFoxRequest;

    const-string v6, "http://sdk.starbolt.io/dist/sdk_videoAndroid.js"

    invoke-direct {v4, p0, v6}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/mobfox/sdk/networking/MobFoxRequest;->get(Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 139
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/mobfox/sdk/bannerads/Banner;->warmedUp:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :goto_1
    :try_start_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "MobFoxBanner"

    const-string v6, "error init cache"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public cancelTimeout()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v0}, Lcom/mobfox/sdk/runnables/Timeout;->cancel()V

    .line 703
    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    return v0
.end method

.method protected getAdvId()V
    .locals 3

    .prologue
    .line 542
    sget-object v1, Lcom/mobfox/sdk/bannerads/Banner;->O_ANDADVID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    :goto_0
    return-void

    .line 544
    :cond_0
    new-instance v0, Lcom/mobfox/sdk/services/MobFoxAdIdService;

    new-instance v1, Lcom/mobfox/sdk/bannerads/Banner$6;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/bannerads/Banner$6;-><init>(Lcom/mobfox/sdk/bannerads/Banner;)V

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/services/MobFoxAdIdService;-><init>(Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;Landroid/content/Context;)V

    .line 554
    .local v0, "advIdService":Lcom/mobfox/sdk/services/MobFoxAdIdService;
    invoke-virtual {v0}, Lcom/mobfox/sdk/services/MobFoxAdIdService;->execute()V

    goto :goto_0
.end method

.method public getAttrs(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 148
    :try_start_0
    const-string v1, "http://schemas.android.com/apk/lib/com.mobfox.sdk"

    .line 149
    .local v1, "packname":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 155
    .end local v1    # "packname":Ljava/lang/String;
    :goto_0
    return-void

    .line 150
    .restart local v1    # "packname":Ljava/lang/String;
    :cond_0
    const-string v2, "http://schemas.android.com/apk/lib/com.mobfox.sdk"

    const-string v3, "smart"

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->smart:Z

    .line 151
    const-string v2, "http://schemas.android.com/apk/lib/com.mobfox.sdk"

    const-string v3, "enableLocation"

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/mobfox/sdk/bannerads/Banner;->loc:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v1    # "packname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "MobFoxBanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attrs err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getBannerPosition()V
    .locals 3

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/mobfox/sdk/bannerads/Banner;->isInterstitial()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const/4 v1, 0x7

    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->banner_pos:I

    .line 530
    :goto_0
    return-void

    .line 520
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-static {v1, v2}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->aboveTheFold(Landroid/content/Context;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    const/4 v1, 0x1

    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->banner_pos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MobFoxBanner"

    const-string v2, "above the fold exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 524
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x3

    :try_start_1
    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->banner_pos:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 527
    :catch_1
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MobFoxBanner"

    const-string v2, "above the fold exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDemo_age()I
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_age:I

    return v0
.end method

.method public getDemo_gender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_gender:Ljava/lang/String;

    return-object v0
.end method

.method public getDemo_keywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getIterator()Lcom/mobfox/sdk/bannerads/EventIterator;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

    return-object v0
.end method

.method protected getLayout()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 568
    iget v5, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    if-lez v5, :cond_0

    iget v5, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    if-lez v5, :cond_0

    .line 569
    iput-boolean v6, p0, Lcom/mobfox/sdk/bannerads/Banner;->hasLayout:Z

    .line 570
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->getBannerPosition()V

    .line 613
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v5, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 576
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    :try_start_0
    iget-object v5, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v5}, Lcom/mobfox/sdk/bannerads/Banner;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v4, v5

    .line 577
    .local v4, "width":I
    iget-object v5, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v5}, Lcom/mobfox/sdk/bannerads/Banner;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 578
    .local v2, "height":I
    if-lez v4, :cond_1

    if-lez v2, :cond_1

    .line 579
    iget-object v5, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iput v4, v5, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    .line 580
    iget-object v5, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iput v2, v5, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    .line 581
    const-string v5, "MobFoxBanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adspace_width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iget v7, v7, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nadspace_height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iget v7, v7, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mobfox/sdk/bannerads/Banner;->hasLayout:Z

    .line 583
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->getBannerPosition()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 586
    .end local v2    # "height":I
    .end local v4    # "width":I
    :catch_0
    move-exception v1

    .line 587
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "MobFoxBanner"

    const-string v6, "get layout error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v5}, Lcom/mobfox/sdk/bannerads/Banner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 593
    .local v3, "treeObserver":Landroid/view/ViewTreeObserver;
    new-instance v5, Lcom/mobfox/sdk/bannerads/Banner$7;

    invoke-direct {v5, p0, v0}, Lcom/mobfox/sdk/bannerads/Banner$7;-><init>(Lcom/mobfox/sdk/bannerads/Banner;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 588
    .end local v3    # "treeObserver":Landroid/view/ViewTreeObserver;
    :catch_1
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/Throwable;
    const-string v5, "MobFoxBanner"

    const-string v6, "get layout error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getLoadAdListener()Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    return-object v0
.end method

.method protected getLocation()V
    .locals 3

    .prologue
    .line 616
    sget-boolean v0, Lcom/mobfox/sdk/bannerads/Banner;->loc:Z

    if-nez v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 619
    :cond_0
    new-instance v0, Lcom/mobfox/sdk/services/MobFoxLocationService;

    new-instance v1, Lcom/mobfox/sdk/bannerads/Banner$8;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/bannerads/Banner$8;-><init>(Lcom/mobfox/sdk/bannerads/Banner;)V

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/services/MobFoxLocationService;-><init>(Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->locationService:Lcom/mobfox/sdk/services/MobFoxLocationService;

    .line 629
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->locationService:Lcom/mobfox/sdk/services/MobFoxLocationService;

    invoke-virtual {v0}, Lcom/mobfox/sdk/services/MobFoxLocationService;->execute()V

    goto :goto_0
.end method

.method public getMobFoxWebView()Lcom/mobfox/sdk/webview/MobFoxWebView;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    return-object v0
.end method

.method public getO_andadvid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    sget-object v0, Lcom/mobfox/sdk/bannerads/Banner;->O_ANDADVID:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected getWaterfalls(Ljava/lang/String;)V
    .locals 3
    .param p1, "invh"    # Ljava/lang/String;

    .prologue
    .line 476
    new-instance v0, Lcom/mobfox/sdk/networking/MobFoxRequest;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    const-string v2, "http://sdk.starbolt.io/waterfalls.json"

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 477
    .local v0, "request":Lcom/mobfox/sdk/networking/MobFoxRequest;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/networking/MobFoxRequest;->setTimeout(I)Lcom/mobfox/sdk/networking/MobFoxRequest;

    .line 478
    const-string v1, "p"

    invoke-virtual {v0, v1, p1}, Lcom/mobfox/sdk/networking/MobFoxRequest;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/mobfox/sdk/networking/MobFoxRequest;

    .line 479
    new-instance v1, Lcom/mobfox/sdk/bannerads/Banner$5;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/bannerads/Banner$5;-><init>(Lcom/mobfox/sdk/bannerads/Banner;)V

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/networking/MobFoxRequest;->get(Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 507
    return-void
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobfox/sdk/bannerads/Banner;->warmUp(Landroid/content/Context;)V

    .line 354
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->getAdvId()V

    .line 356
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->loadJs()V

    .line 358
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->getLayout()V

    .line 360
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->getLocation()V

    .line 362
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobfox/sdk/utils/Utils;->getBundleId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->sub_bundle_id:Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-static {v0, v1}, Lcom/mobfox/sdk/utils/Utils;->postDMP(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 368
    return-void
.end method

.method public isTimeout()Z
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v0}, Lcom/mobfox/sdk/runnables/Timeout;->isTimeout()Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 7

    .prologue
    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->loadStart:J

    .line 375
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    :cond_0
    const-string v0, "MobFoxBanner"

    const-string v1, "please set inventory hash before load()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-nez v0, :cond_1

    .line 404
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "please set inventory hash before load()"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/bannerads/BannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v0}, Lcom/mobfox/sdk/runnables/Timeout;->cancel()V

    .line 382
    new-instance v0, Lcom/mobfox/sdk/runnables/Timeout;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    new-instance v2, Lcom/mobfox/sdk/bannerads/Banner$2;

    invoke-direct {v2, p0}, Lcom/mobfox/sdk/bannerads/Banner$2;-><init>(Lcom/mobfox/sdk/bannerads/Banner;)V

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/runnables/Timeout;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    .line 390
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->repeater:Lcom/mobfox/sdk/runnables/Repeater;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->repeater:Lcom/mobfox/sdk/runnables/Repeater;

    invoke-virtual {v0}, Lcom/mobfox/sdk/runnables/Repeater;->stop()V

    .line 393
    :cond_3
    iget v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->refresh:I

    if-lez v0, :cond_4

    .line 394
    new-instance v1, Lcom/mobfox/sdk/runnables/Repeater;

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->handler:Landroid/os/Handler;

    iget v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->refresh:I

    int-to-long v4, v0

    new-instance v6, Lcom/mobfox/sdk/bannerads/Banner$3;

    invoke-direct {v6, p0}, Lcom/mobfox/sdk/bannerads/Banner$3;-><init>(Lcom/mobfox/sdk/bannerads/Banner;)V

    invoke-direct/range {v1 .. v6}, Lcom/mobfox/sdk/runnables/Repeater;-><init>(Landroid/content/Context;Landroid/os/Handler;JLjava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->repeater:Lcom/mobfox/sdk/runnables/Repeater;

    .line 401
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->repeater:Lcom/mobfox/sdk/runnables/Repeater;

    invoke-virtual {v0}, Lcom/mobfox/sdk/runnables/Repeater;->start()V

    .line 403
    :cond_4
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mobfox/sdk/bannerads/Banner;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected load(Ljava/lang/String;)V
    .locals 6
    .param p1, "invh"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->hasLayout:Z

    if-nez v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/mobfox/sdk/bannerads/Banner$4;

    invoke-direct {v2, p0}, Lcom/mobfox/sdk/bannerads/Banner$4;-><init>(Lcom/mobfox/sdk/bannerads/Banner;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-boolean v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->smart:Z

    if-eqz v1, :cond_2

    .line 429
    iget v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    const/16 v2, 0x32

    if-ne v1, v2, :cond_3

    .line 430
    const/16 v1, 0x140

    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    .line 444
    :goto_1
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iget v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    invoke-static {v1, v2, v3}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->setSmartDimensions(Landroid/content/Context;Landroid/view/View;I)V

    .line 446
    :cond_2
    invoke-virtual {p0}, Lcom/mobfox/sdk/bannerads/Banner;->makeParams()Lorg/json/JSONObject;

    move-result-object v0

    .line 447
    .local v0, "params":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0, v0}, Lcom/mobfox/sdk/bannerads/Banner;->loadBanner(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 431
    .end local v0    # "params":Lorg/json/JSONObject;
    :cond_3
    iget v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_4

    .line 432
    const/16 v1, 0x2d8

    iput v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    goto :goto_1

    .line 434
    :cond_4
    const-string v1, "MobFoxBanner"

    const-string v2, "smart banner supports 50, 90 heights"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v1}, Lcom/mobfox/sdk/runnables/Timeout;->cancel()V

    .line 440
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "smart banner supports 50, 90 heights"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/mobfox/sdk/bannerads/BannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected loadBanner(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadAd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MobFoxBanner"

    const-string v2, "webView loadBanner error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-interface {v1, v2, v0}, Lcom/mobfox/sdk/bannerads/BannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    goto :goto_0

    .line 460
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MobFoxBanner"

    const-string v2, "webView loadBanner error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/mobfox/sdk/bannerads/BannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected loadJs()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 558
    new-instance v0, Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    .line 559
    iget v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    if-lez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->convertDpToPixel(FLandroid/content/Context;)I

    move-result v2

    iget v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->convertDpToPixel(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected makeParams()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 639
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 643
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "s"

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    const-string v2, "o_andadvid"

    sget-object v3, Lcom/mobfox/sdk/bannerads/Banner;->O_ANDADVID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    const-string v2, "type"

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    const-string v2, "adFormat"

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->adFormat:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 647
    const-string v2, "autoplay"

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->autoplay:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    const-string v3, "skip"

    iget-boolean v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->skip:Z

    if-eqz v2, :cond_9

    const-string v2, "true"

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 649
    const-string v3, "debug"

    iget-boolean v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->debug:Z

    if-eqz v2, :cond_a

    const-string v2, "true"

    :goto_1
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    const-string v2, "rt"

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->rt:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    const-string v2, "adspace_width"

    iget v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 652
    const-string v2, "adspace_height"

    iget v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 653
    const-string v2, "adspace_strict"

    iget v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_strict:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 654
    const-string v2, "sub_bundle_id"

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->sub_bundle_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    const-string v2, "auto_pilot"

    iget-boolean v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->auto_pilot:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 656
    const-string v2, "v"

    const-string v3, "Core_3.2.7"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    const-string v2, "secure"

    sget-boolean v3, Lcom/mobfox/sdk/bannerads/Banner;->secure:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 658
    const-string v2, "start_muted"

    iget-boolean v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->start_muted:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 659
    const-string v2, "dev_js"

    sget v3, Lcom/mobfox/sdk/bannerads/Banner;->dev_js:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 661
    iget v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_min:I

    if-lez v2, :cond_0

    const-string v2, "v_dur_min"

    iget v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_min:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 662
    :cond_0
    iget v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_max:I

    if-lez v2, :cond_1

    const-string v2, "v_dur_max"

    iget v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_max:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 663
    :cond_1
    iget v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->r_floor:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const-string v2, "r_floor"

    iget v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->r_floor:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 664
    :cond_2
    iget v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->banner_pos:I

    if-lez v2, :cond_3

    const-string v2, "banner_pos"

    iget v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->banner_pos:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 666
    :cond_3
    sget-object v2, Lcom/mobfox/sdk/bannerads/Banner;->O_ANDADVID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    iput v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->dev_dnt:I

    .line 667
    :cond_4
    const-string v2, "dev_dnt"

    iget v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->dev_dnt:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 669
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_gender:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "demo_gender"

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_gender:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 670
    :cond_5
    iget v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_age:I

    if-lez v2, :cond_6

    const-string v2, "demo_age"

    iget v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_age:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 671
    :cond_6
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_keywords:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    const-string v2, "demo_keywords"

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_keywords:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    :cond_7
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner;->location:Landroid/location/Location;

    if-eqz v2, :cond_8

    .line 673
    const-string v2, "latitude"

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 674
    const-string v2, "longitude"

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :cond_8
    const-string v2, "MobFoxBanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_2
    return-object v1

    .line 648
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_9
    :try_start_1
    const-string v2, ""

    goto/16 :goto_0

    .line 649
    :cond_a
    const-string v2, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "MobFoxBanner"

    const-string v3, "build request exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 839
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->repeater:Lcom/mobfox/sdk/runnables/Repeater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->repeater:Lcom/mobfox/sdk/runnables/Repeater;

    invoke-virtual {v1}, Lcom/mobfox/sdk/runnables/Repeater;->stop()V

    .line 841
    :cond_0
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    if-eqz v1, :cond_1

    .line 842
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-virtual {v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->onPause()V

    .line 846
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/EventIterator;->bannerEvent:Lcom/mobfox/sdk/bannerads/BannerEvent;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/BannerEvent;->videoView:Lcom/mobfox/sdk/video/VASTView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/EventIterator;->bannerEvent:Lcom/mobfox/sdk/bannerads/BannerEvent;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/BannerEvent;->videoView:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v1}, Lcom/mobfox/sdk/video/VASTView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 852
    :cond_2
    :goto_0
    return-void

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MobFoxBanner"

    const-string v2, "onPause error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 849
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MobFoxBanner"

    const-string v2, "onPause error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 633
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->locationService:Lcom/mobfox/sdk/services/MobFoxLocationService;

    if-nez v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->locationService:Lcom/mobfox/sdk/services/MobFoxLocationService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 856
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->repeater:Lcom/mobfox/sdk/runnables/Repeater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->repeater:Lcom/mobfox/sdk/runnables/Repeater;

    invoke-virtual {v1}, Lcom/mobfox/sdk/runnables/Repeater;->start()V

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    if-eqz v1, :cond_1

    .line 859
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-virtual {v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->onResume()V

    .line 863
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/EventIterator;->bannerEvent:Lcom/mobfox/sdk/bannerads/BannerEvent;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/BannerEvent;->videoView:Lcom/mobfox/sdk/video/VASTView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner;->iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/EventIterator;->bannerEvent:Lcom/mobfox/sdk/bannerads/BannerEvent;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/BannerEvent;->videoView:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v1}, Lcom/mobfox/sdk/video/VASTView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 869
    :cond_2
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MobFoxBanner"

    const-string v2, "onResume error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 866
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MobFoxBanner"

    const-string v2, "onResume error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAdFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "adFormat"    # Ljava/lang/String;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adFormat:Ljava/lang/String;

    .line 760
    return-void
.end method

.method public setAdspace_strict(I)V
    .locals 0
    .param p1, "adspace_strict"    # I

    .prologue
    .line 783
    iput p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->adspace_strict:I

    .line 784
    return-void
.end method

.method public setAutoplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoplay"    # Ljava/lang/String;

    .prologue
    .line 763
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->autoplay:Ljava/lang/String;

    .line 764
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 803
    iput-boolean p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->debug:Z

    .line 804
    return-void
.end method

.method public setDemo_age(I)V
    .locals 0
    .param p1, "demo_age"    # I

    .prologue
    .line 816
    iput p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_age:I

    .line 817
    return-void
.end method

.method public setDemo_gender(Ljava/lang/String;)V
    .locals 0
    .param p1, "demo_gender"    # Ljava/lang/String;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_gender:Ljava/lang/String;

    .line 768
    return-void
.end method

.method public setDemo_keywords(Ljava/lang/String;)V
    .locals 0
    .param p1, "demo_keywords"    # Ljava/lang/String;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->demo_keywords:Ljava/lang/String;

    .line 772
    return-void
.end method

.method public setInventoryHash(Ljava/lang/String;)V
    .locals 1
    .param p1, "invh"    # Ljava/lang/String;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->s:Ljava/lang/String;

    .line 741
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mobfox/sdk/bannerads/Banner;->getWaterfalls(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public setListener(Lcom/mobfox/sdk/bannerads/BannerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mobfox/sdk/bannerads/BannerListener;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    .line 752
    return-void
.end method

.method public setLoadAdListener(Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;)V
    .locals 1
    .param p1, "loadAdListener"    # Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    .line 746
    if-nez p1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-virtual {v0, p1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setLoadAdListener(Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;)V

    goto :goto_0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->location:Landroid/location/Location;

    .line 821
    return-void
.end method

.method public setR_floor(F)V
    .locals 0
    .param p1, "r_floor"    # F

    .prologue
    .line 795
    iput p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->r_floor:F

    .line 796
    return-void
.end method

.method public setRefresh(I)V
    .locals 2
    .param p1, "refresh"    # I

    .prologue
    .line 775
    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 776
    const-string v0, "MobFoxBanner"

    const-string v1, "refresh interval must be bigger than 4 seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_0
    return-void

    .line 779
    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->refresh:I

    goto :goto_0
.end method

.method public setSkip(Z)V
    .locals 0
    .param p1, "skip"    # Z

    .prologue
    .line 799
    iput-boolean p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->skip:Z

    .line 800
    return-void
.end method

.method public setSmart(Z)V
    .locals 0
    .param p1, "smart"    # Z

    .prologue
    .line 832
    iput-boolean p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->smart:Z

    .line 833
    return-void
.end method

.method public setStart_muted(Z)V
    .locals 0
    .param p1, "start_muted"    # Z

    .prologue
    .line 812
    iput-boolean p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->start_muted:Z

    .line 813
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->type:Ljava/lang/String;

    .line 756
    return-void
.end method

.method protected setUp()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobfox/sdk/logging/MobFoxReport;->register(Landroid/content/Context;)V

    .line 209
    new-instance v0, Lcom/mobfox/sdk/bannerads/Banner$1;

    invoke-direct {v0, p0}, Lcom/mobfox/sdk/bannerads/Banner$1;-><init>(Lcom/mobfox/sdk/bannerads/Banner;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    .line 347
    return-void
.end method

.method public setV_dur_max(I)V
    .locals 0
    .param p1, "v_dur_max"    # I

    .prologue
    .line 791
    iput p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_max:I

    .line 792
    return-void
.end method

.method public setV_dur_min(I)V
    .locals 0
    .param p1, "v_dur_min"    # I

    .prologue
    .line 787
    iput p1, p0, Lcom/mobfox/sdk/bannerads/Banner;->v_dur_min:I

    .line 788
    return-void
.end method

.method protected show(Landroid/view/View;)V
    .locals 1
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0}, Lcom/mobfox/sdk/bannerads/Banner;->removeAllViews()V

    .line 408
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0, p1}, Lcom/mobfox/sdk/bannerads/Banner;->addView(Landroid/view/View;)V

    .line 409
    return-void
.end method
