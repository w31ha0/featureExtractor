.class public Lcom/netflix/falkor/Sentinel;
.super Ljava/lang/Object;
.source "Sentinel.java"

# interfaces
.implements Lcom/netflix/falkor/Expires;
.implements Lcom/netflix/falkor/PathBound;
.implements Lcom/netflix/falkor/ReferenceTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/Expires;",
        "Lcom/netflix/falkor/PathBound;",
        "Lcom/netflix/falkor/ReferenceTarget;"
    }
.end annotation


# static fields
.field public static final JSON_KEY:Ljava/lang/String; = "_sentinel"


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

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/netflix/falkor/Sentinel;->value:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/falkor/Sentinel;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getPath()Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/falkor/Sentinel;->path:Lcom/netflix/falkor/PQL;

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
    .line 22
    iget-object v0, p0, Lcom/netflix/falkor/Sentinel;->references:Lcom/netflix/falkor/LinkedList;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/netflix/falkor/Sentinel;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setExpires(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/falkor/Sentinel;->expires:Ljava/util/Date;

    .line 47
    return-void
.end method

.method public setPath(Lcom/netflix/falkor/PQL;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/netflix/falkor/Sentinel;->path:Lcom/netflix/falkor/PQL;

    .line 37
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
    .line 26
    iput-object p1, p0, Lcom/netflix/falkor/Sentinel;->references:Lcom/netflix/falkor/LinkedList;

    .line 27
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    iput-object p1, p0, Lcom/netflix/falkor/Sentinel;->value:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sentinel [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/falkor/Sentinel;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
