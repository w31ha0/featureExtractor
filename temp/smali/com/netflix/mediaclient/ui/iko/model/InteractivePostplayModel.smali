.class public Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;
.super Ljava/lang/Object;
.source "InteractivePostplayModel.java"


# instance fields
.field protected interrupterCount:I

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
.method public getInterrupterCount()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;->interrupterCount:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;->type:Ljava/lang/String;

    return-object v0
.end method
