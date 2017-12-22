.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;
.super Ljava/lang/Object;
.source "SignInConfigData.java"


# instance fields
.field public backAction:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$CachedMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backAction"
    .end annotation
.end field

.field public email:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field public password:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
