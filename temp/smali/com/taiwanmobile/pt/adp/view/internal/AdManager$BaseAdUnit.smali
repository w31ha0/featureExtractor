.class public abstract Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/internal/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseAdUnit"
.end annotation


# static fields
.field public static final KEY_AD:Ljava/lang/String; = "ad"

.field public static final KEY_ADLISTENER:Ljava/lang/String; = "adListener"

.field public static final KEY_ADREQUEST:Ljava/lang/String; = "adRequest"

.field public static final KEY_ADSIZE:Ljava/lang/String; = "adSize"

.field public static final KEY_ADTYPE:Ljava/lang/String; = "adType"

.field public static final KEY_ADUNIT_ID:Ljava/lang/String; = "adunitId"

.field public static final KEY_CLICK_VALID_TIME:Ljava/lang/String; = "cvt"

.field public static final KEY_CONTEXT:Ljava/lang/String; = "_context"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "_deviceId"

.field public static final KEY_IS_OPEN_CHROME:Ljava/lang/String; = "isOpenChrome"

.field public static final KEY_IS_VIDEO_MUTE:Ljava/lang/String; = "isMute"

.field public static final KEY_LEAVE_APPLICATION_MARK:Ljava/lang/String; = "lam"

.field public static final KEY_MEDIA_URL:Ljava/lang/String; = "mediaUrl"

.field public static final KEY_NATIVE_AD_CONTENT:Ljava/lang/String; = "nad_content"

.field public static final KEY_PLANID:Ljava/lang/String; = "planId"

.field public static final KEY_PRESENT_SCREEN_MARK:Ljava/lang/String; = "psm"

.field public static final KEY_REPORT_CLICK_URL:Ljava/lang/String; = "clickUrl"

.field public static final KEY_REPORT_SHOWAD_URL:Ljava/lang/String; = "showAdUrl"

.field public static final KEY_SUB_MEDIA_URL:Ljava/lang/String; = "subMediaUrl"

.field public static final KEY_TARGET_URL:Ljava/lang/String; = "targetUrl"

.field public static final KEY_TXID:Ljava/lang/String; = "txId"

.field public static final KEY_USER_AGENT:Ljava/lang/String; = "userAgent"


# instance fields
.field final synthetic b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

.field protected map:Ljava/util/HashMap;


# direct methods
.method protected constructor <init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->map:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->map:Ljava/util/HashMap;

    .line 82
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->map:Ljava/util/HashMap;

    const-string v1, "adunitId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public removeLeaveApplicationMark()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->map:Ljava/util/HashMap;

    const-string v1, "lam"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public removePresentScreenMark()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->map:Ljava/util/HashMap;

    const-string v1, "psm"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
