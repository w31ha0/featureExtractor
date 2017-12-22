.class Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager$Exception;
.super Ljava/lang/RuntimeException;
.source "TrackedLinearLayoutManager.java"


# direct methods
.method private constructor <init>(Ljava/lang/IndexOutOfBoundsException;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 56
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s in %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/IndexOutOfBoundsException;Ljava/lang/String;Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager$1;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager$Exception;-><init>(Ljava/lang/IndexOutOfBoundsException;Ljava/lang/String;)V

    return-void
.end method
