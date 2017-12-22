.class public Lcom/netflix/mediaclient/service/logging/client/model/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final APP:Ljava/lang/String; = "app"

.field public static final MDXJS:Ljava/lang/String; = "mdxjs"

.field public static final MDXLIB:Ljava/lang/String; = "mdxlib"

.field public static final NRDAPP:Ljava/lang/String; = "nrdapp"

.field public static final NRDLIB:Ljava/lang/String; = "nrdlib"

.field public static final NRDSDK:Ljava/lang/String; = "nrdsdk"

.field public static final OS:Ljava/lang/String; = "os"

.field public static final UI:Ljava/lang/String; = "ui"


# instance fields
.field private app:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private mdxjs:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.1
    .end annotation
.end field

.field private mdxlib:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private nrdapp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private nrdlib:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private nrdsdk:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.1
    .end annotation
.end field

.field private os:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private ui:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->ui:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "2014.1"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdapp:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "2014.1"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdlib:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "2014.1"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxlib:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "1.1.6-android"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxjs:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "4.1.5"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdsdk:Ljava/lang/String;

    .line 93
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->os:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/Version;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 183
    if-nez p0, :cond_0

    .line 197
    :goto_0
    return-object v0

    .line 187
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/Version;-><init>()V

    .line 188
    const-string/jumbo v2, "app"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    .line 189
    const-string/jumbo v2, "ui"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->ui:Ljava/lang/String;

    .line 190
    const-string/jumbo v2, "nrdapp"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdapp:Ljava/lang/String;

    .line 191
    const-string/jumbo v2, "nrdlib"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdlib:Ljava/lang/String;

    .line 192
    const-string/jumbo v2, "mdxlib"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxlib:Ljava/lang/String;

    .line 193
    const-string/jumbo v2, "mdxjs"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxjs:Ljava/lang/String;

    .line 194
    const-string/jumbo v2, "nrdsdk"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdsdk:Ljava/lang/String;

    .line 195
    const-string/jumbo v2, "os"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/logging/client/model/Version;->os:Ljava/lang/String;

    move-object v0, v1

    .line 197
    goto :goto_0
.end method


# virtual methods
.method public getApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    return-object v0
.end method

.method public getMdxjs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxjs:Ljava/lang/String;

    return-object v0
.end method

.method public getMdxlib()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxlib:Ljava/lang/String;

    return-object v0
.end method

.method public getNrdapp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdapp:Ljava/lang/String;

    return-object v0
.end method

.method public getNrdlib()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdlib:Ljava/lang/String;

    return-object v0
.end method

.method public getNrdsdk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdsdk:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getUi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->ui:Ljava/lang/String;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 154
    const-string/jumbo v1, "app"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->ui:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 157
    const-string/jumbo v1, "ui"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->ui:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdapp:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 160
    const-string/jumbo v1, "nrdapp"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdapp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdlib:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 163
    const-string/jumbo v1, "nrdlib"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdlib:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxlib:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 166
    const-string/jumbo v1, "mdxlib"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxlib:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxjs:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 169
    const-string/jumbo v1, "mdxjs"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxjs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdsdk:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 172
    const-string/jumbo v1, "nrdsdk"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdsdk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    :cond_6
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->os:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 175
    const-string/jumbo v1, "os"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->os:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    :cond_7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Version [app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ui="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->ui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nrdapp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdapp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nrdlib="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdlib:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mdxlib="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxlib:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mdxjs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->mdxjs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nrdsdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->nrdsdk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Version;->os:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
