.class final Lio/realm/internal/async/RealmThreadPoolExecutor$1;
.super Ljava/lang/Object;
.source "RealmThreadPoolExecutor.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic val$filePattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lio/realm/internal/async/RealmThreadPoolExecutor$1;->val$filePattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lio/realm/internal/async/RealmThreadPoolExecutor$1;->val$filePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
