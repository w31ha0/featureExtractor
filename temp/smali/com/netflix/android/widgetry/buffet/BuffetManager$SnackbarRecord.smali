.class Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;
.super Ljava/lang/Object;
.source "BuffetManager.java"


# instance fields
.field animated:Z

.field final callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field duration:I


# direct methods
.method constructor <init>(IZLcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    .line 170
    iput p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    .line 171
    iput-boolean p2, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->animated:Z

    .line 172
    return-void
.end method


# virtual methods
.method isSnackbar(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z
    .locals 1

    .prologue
    .line 175
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
