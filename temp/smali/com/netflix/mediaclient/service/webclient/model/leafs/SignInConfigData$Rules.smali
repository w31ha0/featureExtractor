.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;
.super Ljava/lang/Object;
.source "SignInConfigData.java"


# instance fields
.field public fieldType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fieldType"
    .end annotation
.end field

.field public maxLength:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxLength"
    .end annotation
.end field

.field public minLength:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minLength"
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;->this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
