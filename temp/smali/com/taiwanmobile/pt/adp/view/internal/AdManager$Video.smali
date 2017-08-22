.class public Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;
.super Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/internal/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Video"
.end annotation


# static fields
.field public static final CONSTANTS_VIDEO_STATUS_URL:Ljava/lang/String; = "http://agent.tamedia.com.tw/rmadp/g/adv"

.field public static final KEY_DURATION_VIDEO:Ljava/lang/String; = "duration"

.field public static final KEY_FACEBOOK_URL:Ljava/lang/String; = "fb"

.field public static final KEY_IS_SHOWED:Ljava/lang/String; = "kis"

.field public static final KEY_MAX_REPORT_TIMES:Ljava/lang/String; = "_max_report_times"

.field public static final KEY_REPORT_DURATION:Ljava/lang/String; = "rduration"

.field public static final KEY_VIDEOLISTENER:Ljava/lang/String; = "videoListener"

.field public static final STATUS_CLOSE_AD:Ljava/lang/String; = "4"

.field public static final STATUS_CLOSE_FB:Ljava/lang/String; = "5"

.field public static final STATUS_CLOSE_TARGETURL:Ljava/lang/String; = "6"

.field public static final STATUS_FINISH:Ljava/lang/String; = "2"

.field public static final STATUS_PLAYING:Ljava/lang/String; = "1"

.field public static final STATUS_START:Ljava/lang/String; = "0"


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V

    .line 125
    const-string v0, "showAdUrl"

    const-string v1, "http://agent.tamedia.com.tw/rmadp/g/adv"

    invoke-virtual {p0, v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void
.end method
