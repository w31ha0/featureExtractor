.class Lcom/netflix/cstatssamurai/HostnameCategoryResolver$PatternCategoryMapping;
.super Ljava/lang/Object;
.source "HostnameCategoryResolver.java"


# instance fields
.field category:Ljava/lang/String;

.field pattern:Ljava/util/regex/Pattern;

.field final synthetic this$0:Lcom/netflix/cstatssamurai/HostnameCategoryResolver;


# direct methods
.method public constructor <init>(Lcom/netflix/cstatssamurai/HostnameCategoryResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    iput-object p1, p0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver$PatternCategoryMapping;->this$0:Lcom/netflix/cstatssamurai/HostnameCategoryResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver$PatternCategoryMapping;->pattern:Ljava/util/regex/Pattern;

    .line 17
    iput-object p3, p0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver$PatternCategoryMapping;->category:Ljava/lang/String;

    .line 18
    return-void
.end method
