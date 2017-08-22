.class final Lcom/mobfox/sdk/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/utils/Utils;->postDMP(Landroid/content/Context;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostCompleted()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onPostError()V
    .locals 2

    .prologue
    .line 248
    const-string v0, "MobFoxBanner"

    const-string v1, "dmp post failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method
