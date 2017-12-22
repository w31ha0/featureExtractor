.class Lorg/chromium/base/library_loader/LibraryLoader$1;
.super Landroid/os/AsyncTask;
.source "LibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/library_loader/LibraryLoader;

.field final synthetic val$coldStart:Z


# direct methods
.method constructor <init>(Lorg/chromium/base/library_loader/LibraryLoader;Z)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    iput-boolean p2, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->val$coldStart:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 210
    const-string/jumbo v0, "LibraryLoader.asyncPrefetchLibrariesToMemory"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->access$000()I

    move-result v3

    .line 215
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->val$coldStart:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x5a

    if-ge v3, v0, :cond_3

    const/4 v0, 0x1

    move v2, v0

    .line 216
    :goto_0
    if-eqz v2, :cond_5

    .line 217
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->access$100()Z

    move-result v0

    .line 218
    if-nez v0, :cond_0

    .line 219
    const-string/jumbo v4, "LibraryLoader"

    const-string/jumbo v5, "Forking a process to prefetch the native library failed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_0
    :goto_1
    invoke-static {}, Lorg/chromium/base/metrics/RecordHistogram;->initialize()V

    .line 225
    if-eqz v2, :cond_1

    .line 226
    const-string/jumbo v1, "LibraryLoader.PrefetchStatus"

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 228
    :cond_1
    const/4 v0, -0x1

    if-eq v3, v0, :cond_2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LibraryLoader.PercentageOfResidentCodeBeforePrefetch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->val$coldStart:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, ".ColdStartup"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordPercentageHistogram(Ljava/lang/String;I)V

    .line 233
    :cond_2
    const-string/jumbo v0, "LibraryLoader.asyncPrefetchLibrariesToMemory"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    return-object v0

    :cond_3
    move v2, v1

    .line 215
    goto :goto_0

    .line 229
    :cond_4
    const-string/jumbo v0, ".WarmStartup"

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method
