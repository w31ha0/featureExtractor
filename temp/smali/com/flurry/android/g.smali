.class final Lcom/flurry/android/g;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/android/ap;


# direct methods
.method constructor <init>(Lcom/flurry/android/ap;I)V
    .locals 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/ap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/flurry/android/g;->size()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/ap;

    invoke-static {v1}, Lcom/flurry/android/ap;->a(Lcom/flurry/android/ap;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
