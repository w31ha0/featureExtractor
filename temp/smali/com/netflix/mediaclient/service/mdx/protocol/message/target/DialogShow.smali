.class public Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;
.source "DialogShow.java"


# static fields
.field private static PROPERTY_data:Ljava/lang/String;

.field private static PROPERTY_message:Ljava/lang/String;

.field private static PROPERTY_name:Ljava/lang/String;

.field private static PROPERTY_options:Ljava/lang/String;

.field private static PROPERTY_title:Ljava/lang/String;

.field private static PROPERTY_uid:Ljava/lang/String;


# instance fields
.field private mChoices:[Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow$DialogItem;

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "uid"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->PROPERTY_uid:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "title"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->PROPERTY_title:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "message"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->PROPERTY_message:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "options"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->PROPERTY_options:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "name"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->PROPERTY_name:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "data"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->PROPERTY_data:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 43
    const-string/jumbo v0, "DIALOG_SHOW"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;-><init>(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->PROPERTY_uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->mUid:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->PROPERTY_title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->mTitle:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->PROPERTY_message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->mMessage:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->PROPERTY_options:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow$DialogItem;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->mChoices:[Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow$DialogItem;

    .line 49
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->mChoices:[Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow$DialogItem;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow$DialogItem;->fromJson(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow$DialogItem;

    move-result-object v3

    aput-object v3, v2, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->appBodyJson:Lorg/json/JSONObject;

    .line 53
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->PROPERTY_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->PROPERTY_data:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getChoices()[Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow$DialogItem;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->mChoices:[Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow$DialogItem;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;->mUid:Ljava/lang/String;

    return-object v0
.end method
