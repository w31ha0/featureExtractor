.class Lcom/mobfox/sdk/tagbanner/TagBanner$6;
.super Ljava/lang/Object;
.source "TagBanner.java"

# interfaces
.implements Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/tagbanner/TagBanner;->getAdvId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/tagbanner/TagBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/tagbanner/TagBanner;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$6;->this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)V
    .locals 1
    .param p1, "adv_id"    # Ljava/lang/String;

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    const-string v0, ""

    sput-object v0, Lcom/mobfox/sdk/tagbanner/TagBanner;->O_ANDADVID:Ljava/lang/String;

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    sput-object p1, Lcom/mobfox/sdk/tagbanner/TagBanner;->O_ANDADVID:Ljava/lang/String;

    goto :goto_0
.end method
