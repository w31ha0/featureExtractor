.class Lcom/mobfox/sdk/bannerads/Banner$8;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/Banner;->getLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/bannerads/Banner;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/bannerads/Banner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/bannerads/Banner;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner$8;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 626
    const-string v0, "MobFoxBanner"

    const-string v1, "err"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-void
.end method

.method public onLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$8;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0, p1}, Lcom/mobfox/sdk/bannerads/Banner;->setLocation(Landroid/location/Location;)V

    .line 623
    return-void
.end method
