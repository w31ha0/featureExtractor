.class final Lcom/wooboo/adlib_android/ImpressionAdView$3;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/ImpressionAdView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->b()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(Landroid/content/Context;)V

    .line 179
    :cond_0
    return-void
.end method
