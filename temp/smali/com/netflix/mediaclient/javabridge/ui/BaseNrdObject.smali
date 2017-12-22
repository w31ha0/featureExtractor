.class public abstract Lcom/netflix/mediaclient/javabridge/ui/BaseNrdObject;
.super Ljava/lang/Object;
.source "BaseNrdObject.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/NrdpObject;


# static fields
.field protected static final JSON_FIELD_DATA:Ljava/lang/String; = "data"

.field protected static final JSON_FIELD_NAME:Ljava/lang/String; = "name"

.field protected static final JSON_FIELD_OBJECT:Ljava/lang/String; = "object"

.field protected static final JSON_FIELD_PROPERTIES:Ljava/lang/String; = "properties"

.field protected static final JSON_FIELD_TYPE:Ljava/lang/String; = "type"

.field protected static final NAME_IMC:Ljava/lang/String; = "IMediaControl"

.field protected static final TYPE_EVENT:Ljava/lang/String; = "Event"

.field protected static final TYPE_PROP_UPDATE:Ljava/lang/String; = "PropertyUpdate"


# instance fields
.field protected bridge:Lcom/netflix/mediaclient/javabridge/Bridge;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bridge is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdObject;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    .line 48
    return-void
.end method


# virtual methods
.method protected getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 143
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 111
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 79
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 63
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 127
    invoke-static {p1, p2, p3, p4}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
