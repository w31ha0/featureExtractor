.class final Lcom/wooboo/adlib_android/ImpressionAdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/ImpressionAdView;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 310
    :try_start_0
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->b()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->b()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
