.class final Lcom/a/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/a/a/a/m;

.field public final b:J

.field public final c:Lcom/a/a/a/l;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/a/a/a/m;JLcom/a/a/a/l;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/m;",
            "J",
            "Lcom/a/a/a/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/a/a/a/k;->a:Lcom/a/a/a/m;

    .line 77
    iput-wide p2, p0, Lcom/a/a/a/k;->b:J

    .line 78
    iput-object p4, p0, Lcom/a/a/a/k;->c:Lcom/a/a/a/l;

    .line 79
    iput-object p5, p0, Lcom/a/a/a/k;->d:Ljava/util/Map;

    .line 80
    iput-object p6, p0, Lcom/a/a/a/k;->e:Ljava/lang/String;

    .line 81
    iput-object p7, p0, Lcom/a/a/a/k;->f:Ljava/util/Map;

    .line 82
    return-void
.end method

.method public static a(Lcom/a/a/a/m;)Lcom/a/a/a/k;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/a/a/a/l;->j:Lcom/a/a/a/l;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Lcom/a/a/a/l;Ljava/util/Map;)Lcom/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/a/a/a/m;Lcom/a/a/a/l;Landroid/app/Activity;)Lcom/a/a/a/k;
    .locals 2

    .prologue
    .line 38
    const-string v0, "activity"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 40
    invoke-static {p0, p1, v0}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Lcom/a/a/a/l;Ljava/util/Map;)Lcom/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/a/a/a/m;Lcom/a/a/a/l;Ljava/util/Map;)Lcom/a/a/a/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/m;",
            "Lcom/a/a/a/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/a/a/a/k;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Lcom/a/a/a/l;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Lcom/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/a/a/a/m;Lcom/a/a/a/l;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Lcom/a/a/a/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/m;",
            "Lcom/a/a/a/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/a/a/a/k;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/a/a/a/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/a/a/a/k;-><init>(Lcom/a/a/a/m;JLcom/a/a/a/l;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static a(Lcom/a/a/a/m;Ljava/lang/String;)Lcom/a/a/a/k;
    .locals 2

    .prologue
    .line 48
    const-string v0, "sessionId"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/a/a/a/l;->h:Lcom/a/a/a/l;

    invoke-static {p0, v1, v0}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Lcom/a/a/a/l;Ljava/util/Map;)Lcom/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/a/a/a/m;Ljava/lang/String;)Lcom/a/a/a/k;
    .locals 2

    .prologue
    .line 53
    const-string v0, "sessionId"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/a/a/a/l;->i:Lcom/a/a/a/l;

    invoke-static {p0, v1, v0}, Lcom/a/a/a/k;->a(Lcom/a/a/a/m;Lcom/a/a/a/l;Ljava/util/Map;)Lcom/a/a/a/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/a/a/a/k;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/a/a/a/k;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/k;->c:Lcom/a/a/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/k;->d:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/k;->f:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/k;->a:Lcom/a/a/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/k;->g:Ljava/lang/String;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/k;->g:Ljava/lang/String;

    return-object v0
.end method
