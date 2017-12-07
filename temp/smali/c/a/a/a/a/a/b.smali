.class final Lc/a/a/a/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/util/Locale;

.field private final synthetic c:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    iput-object p1, p0, Lc/a/a/a/a/a/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lc/a/a/a/a/a/b;->b:Ljava/util/Locale;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/a/a/a/b;->c:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc/a/a/a/a/a/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lc/a/a/a/a/a/b;->b:Ljava/util/Locale;

    iget-object v2, p0, Lc/a/a/a/a/a/b;->c:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc/a/a/a/a/a/b;->c:Ljava/lang/ClassLoader;

    :goto_0
    invoke-static {v0, v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_0
.end method
