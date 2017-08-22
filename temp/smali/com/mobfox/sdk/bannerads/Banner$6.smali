.class Lcom/mobfox/sdk/bannerads/Banner$6;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/Banner;->getAdvId()V
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
    .line 544
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner$6;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)V
    .locals 1
    .param p1, "adv_id"    # Ljava/lang/String;

    .prologue
    .line 547
    if-nez p1, :cond_0

    .line 548
    const-string v0, ""

    sput-object v0, Lcom/mobfox/sdk/bannerads/Banner;->O_ANDADVID:Ljava/lang/String;

    .line 552
    :goto_0
    return-void

    .line 551
    :cond_0
    sput-object p1, Lcom/mobfox/sdk/bannerads/Banner;->O_ANDADVID:Ljava/lang/String;

    goto :goto_0
.end method
