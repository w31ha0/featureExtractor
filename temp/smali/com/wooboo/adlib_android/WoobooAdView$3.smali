.class final Lcom/wooboo/adlib_android/WoobooAdView$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/WoobooAdView;->requestFreshAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wooboo/adlib_android/WoobooAdView;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    .line 180
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/WoobooAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 184
    invoke-static {v2}, Lcom/wooboo/adlib_android/d;->f(Landroid/content/Context;)Lcom/wooboo/adlib_android/c;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_3

    .line 186
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/a;->f()Lcom/wooboo/adlib_android/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wooboo/adlib_android/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    .line 186
    :goto_0
    monitor-exit p0

    .line 254
    :goto_1
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/a;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v8, v0

    .line 191
    :goto_2
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    .line 192
    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView;->b(Lcom/wooboo/adlib_android/WoobooAdView;)I

    move-result v9

    .line 193
    new-instance v0, Lcom/wooboo/adlib_android/a;

    .line 194
    const/4 v3, 0x0

    .line 195
    invoke-static {}, Lcom/wooboo/adlib_android/WoobooAdView;->getAdWidth()I

    move-result v4

    invoke-static {}, Lcom/wooboo/adlib_android/WoobooAdView;->getAdHeight()I

    move-result v5

    .line 196
    invoke-static {}, Lcom/wooboo/adlib_android/WoobooAdView;->getDensity()D

    move-result-wide v6

    .line 193
    invoke-direct/range {v0 .. v7}, Lcom/wooboo/adlib_android/a;-><init>(Lcom/wooboo/adlib_android/c;Landroid/content/Context;ZIID)V

    .line 198
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v1}, Lcom/wooboo/adlib_android/WoobooAdView;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/a;->setBackgroundColor(I)V

    .line 199
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v1}, Lcom/wooboo/adlib_android/WoobooAdView;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/a;->a(I)V

    .line 200
    invoke-virtual {v0, v9}, Lcom/wooboo/adlib_android/a;->setVisibility(I)V

    .line 201
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 202
    invoke-static {}, Lcom/wooboo/adlib_android/WoobooAdView;->getAdWidth()I

    move-result v2

    invoke-static {}, Lcom/wooboo/adlib_android/WoobooAdView;->getAdHeight()I

    move-result v3

    .line 201
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 204
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView;->c(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/WoobooAdView$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 211
    :cond_1
    invoke-static {}, Lcom/wooboo/adlib_android/WoobooAdView;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/wooboo/adlib_android/WoobooAdView$3$1;

    invoke-direct {v2, p0, v0, v9, v8}, Lcom/wooboo/adlib_android/WoobooAdView$3$1;-><init>(Lcom/wooboo/adlib_android/WoobooAdView$3;Lcom/wooboo/adlib_android/a;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 252
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iput-boolean v10, v0, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    goto :goto_1

    :cond_2
    move v8, v10

    .line 190
    goto :goto_2

    .line 240
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView;->c(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/WoobooAdView$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
