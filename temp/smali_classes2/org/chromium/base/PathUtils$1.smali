.class final Lorg/chromium/base/PathUtils$1;
.super Landroid/os/AsyncTask;
.source "PathUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/PathUtils$1;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lorg/chromium/base/PathUtils;->access$100()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
