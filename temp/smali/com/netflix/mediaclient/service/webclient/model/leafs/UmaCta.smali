.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;
.super Ljava/lang/Object;
.source "UmaCta.java"


# static fields
.field public static final ACTION_NOT_NOW:Ljava/lang/String; = "NOT_NOW"

.field public static final ACTION_TYPE_LINK:Ljava/lang/String; = "LINK"

.field public static final ACTION_TYPE_UMS_IMPRESSION:Ljava/lang/String; = "UMS_IMPRESSION"

.field public static final CALLBACK_ACKNOWLEDGED:Ljava/lang/String; = "ACKNOWLEDGED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract action()Ljava/lang/String;
.end method

.method public abstract actionType()Ljava/lang/String;
.end method

.method public abstract autoLogin()Z
.end method

.method public abstract callback()Ljava/lang/String;
.end method

.method public abstract selected()Z
.end method

.method public abstract text()Ljava/lang/String;
.end method

.method public abstract trackingInfo()Ljava/lang/String;
.end method
