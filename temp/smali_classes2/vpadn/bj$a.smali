.class Lvpadn/bj$a;
.super Ljava/lang/Object;
.source "OpenUDID_manager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/bj;


# direct methods
.method private constructor <init>(Lvpadn/bj;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lvpadn/bj$a;->a:Lvpadn/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvpadn/bj;Lvpadn/bj$1;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lvpadn/bj$a;-><init>(Lvpadn/bj;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lvpadn/bj$a;->a:Lvpadn/bj;

    invoke-static {v0}, Lvpadn/bj;->a(Lvpadn/bj;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lvpadn/bj$a;->a:Lvpadn/bj;

    invoke-static {v0}, Lvpadn/bj;->a(Lvpadn/bj;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 186
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    .line 187
    :cond_0
    iget-object v0, p0, Lvpadn/bj$a;->a:Lvpadn/bj;

    invoke-static {v0}, Lvpadn/bj;->a(Lvpadn/bj;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lvpadn/bj$a;->a:Lvpadn/bj;

    invoke-static {v1}, Lvpadn/bj;->a(Lvpadn/bj;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 188
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
