.class Lcom/biznessapps/utils/ImageManager$2;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2e53e16d5a7e4d58L


# instance fields
.field final synthetic this$0:Lcom/biznessapps/utils/ImageManager;


# direct methods
.method constructor <init>(Lcom/biznessapps/utils/ImageManager;IFZ)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # F
    .param p4, "x2"    # Z

    .prologue
    .line 99
    iput-object p1, p0, Lcom/biznessapps/utils/ImageManager$2;->this$0:Lcom/biznessapps/utils/ImageManager;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/ImageManager$2;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    const/4 v1, 0x1

    .line 106
    .local v1, "shouldBeRemoved":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 107
    if-eqz p1, :cond_1

    .line 108
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 109
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/biznessapps/utils/ImageManager$2;->this$0:Lcom/biznessapps/utils/ImageManager;

    invoke-static {v2}, Lcom/biznessapps/utils/ImageManager;->access$100(Lcom/biznessapps/utils/ImageManager;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/utils/ImageManager$2;->this$0:Lcom/biznessapps/utils/ImageManager;

    invoke-static {v2}, Lcom/biznessapps/utils/ImageManager;->access$100(Lcom/biznessapps/utils/ImageManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "!!!!!!!!!!!!!!!!!!!!! bitmap.recycle()"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    :cond_0
    monitor-exit v3

    .line 119
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return v1

    .line 105
    .end local v1    # "shouldBeRemoved":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 116
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "shouldBeRemoved":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
