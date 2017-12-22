.class public Lcom/netflix/falkor/PathBoundException;
.super Ljava/lang/Exception;
.source "PathBoundException.java"

# interfaces
.implements Lcom/netflix/falkor/Expires;
.implements Lcom/netflix/falkor/PathBound;
.implements Lcom/netflix/falkor/ReferenceTarget;


# instance fields
.field private expires:Ljava/util/Date;

.field private path:Lcom/netflix/falkor/PQL;

.field private references:Lcom/netflix/falkor/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/LinkedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/PQL;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iput-object p1, p0, Lcom/netflix/falkor/PathBoundException;->path:Lcom/netflix/falkor/PQL;

    .line 11
    return-void
.end method


# virtual methods
.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/falkor/PathBoundException;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getPath()Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/netflix/falkor/PathBoundException;->path:Lcom/netflix/falkor/PQL;

    return-object v0
.end method

.method public getReferences()Lcom/netflix/falkor/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/LinkedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/falkor/PathBoundException;->references:Lcom/netflix/falkor/LinkedList;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 14
    return-object p0
.end method

.method public setExpires(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/netflix/falkor/PathBoundException;->expires:Ljava/util/Date;

    .line 31
    return-void
.end method

.method public setPath(Lcom/netflix/falkor/PQL;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/netflix/falkor/PathBoundException;->path:Lcom/netflix/falkor/PQL;

    .line 23
    return-void
.end method

.method public setReferences(Lcom/netflix/falkor/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/LinkedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/netflix/falkor/PathBoundException;->references:Lcom/netflix/falkor/LinkedList;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/netflix/falkor/PathBoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
