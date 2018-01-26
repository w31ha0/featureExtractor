.class Lcom/biznessapps/utils/ImageManager$3;
.super Ljava/util/LinkedHashMap;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/biznessapps/utils/ImageManager$ImageLoadTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x24280ab69c444cd7L


# instance fields
.field final synthetic this$0:Lcom/biznessapps/utils/ImageManager;


# direct methods
.method constructor <init>(Lcom/biznessapps/utils/ImageManager;IFZ)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # F
    .param p4, "x2"    # Z

    .prologue
    .line 127
    iput-object p1, p0, Lcom/biznessapps/utils/ImageManager$3;->this$0:Lcom/biznessapps/utils/ImageManager;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/biznessapps/utils/ImageManager$ImageLoadTask;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/biznessapps/utils/ImageManager$ImageLoadTask;>;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/ImageManager$3;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
