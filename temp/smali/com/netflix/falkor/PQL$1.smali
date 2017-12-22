.class final Lcom/netflix/falkor/PQL$1;
.super Ljava/lang/Object;
.source "PQL.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/netflix/falkor/PQL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)I
    .locals 1

    .prologue
    .line 647
    invoke-static {p1, p2}, Lcom/netflix/falkor/PQL;->access$000(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 644
    check-cast p1, Lcom/netflix/falkor/PQL;

    check-cast p2, Lcom/netflix/falkor/PQL;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/falkor/PQL$1;->compare(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)I

    move-result v0

    return v0
.end method
