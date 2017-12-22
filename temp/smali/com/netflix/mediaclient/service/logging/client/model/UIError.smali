.class public Lcom/netflix/mediaclient/service/logging/client/model/UIError;
.super Lcom/netflix/mediaclient/service/logging/client/model/Error;
.source "UIError.java"


# static fields
.field public static final DISPLAYED_MESSAGE:Ljava/lang/String; = "displayedMessage"

.field public static final UI_ACTION:Ljava/lang/String; = "uiAction"


# instance fields
.field private displayedMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayedMessage"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private uiAction:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uiAction"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->getRootCause()Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->getDeepError()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    .line 74
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->displayedMessage:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->uiAction:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>()V

    .line 87
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->displayedMessage:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->uiAction:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    .line 89
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->rootCause:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/client/model/RootCause;",
            "Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p4}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    .line 101
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->displayedMessage:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->uiAction:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lorg/json/JSONObject;)V

    .line 58
    const-string/jumbo v0, "displayedMessage"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->displayedMessage:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "uiAction"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->uiAction:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    .line 63
    :cond_0
    return-void
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    .locals 2

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 154
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    .locals 1

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public getDisplayedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->displayedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUiAction()Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->uiAction:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->uiAction:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    if-eqz v1, :cond_0

    .line 140
    const-string/jumbo v1, "uiAction"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->uiAction:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->displayedMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 143
    const-string/jumbo v1, "displayedMessage"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->displayedMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UIError [uiAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->uiAction:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayedMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->displayedMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
