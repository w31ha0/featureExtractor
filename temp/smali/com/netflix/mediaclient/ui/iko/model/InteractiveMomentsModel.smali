.class public Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;
.super Ljava/lang/Object;
.source "InteractiveMomentsModel.java"


# instance fields
.field protected audioLocale:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;->audioLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;->type:Ljava/lang/String;

    return-object v0
.end method
