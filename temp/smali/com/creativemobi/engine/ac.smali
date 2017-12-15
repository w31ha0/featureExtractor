.class public final Lcom/creativemobi/engine/ac;
.super Ljava/lang/Object;
.source "Options.java"


# static fields
.field private static a:[I

.field private static b:Ljava/lang/String;

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Ljava/util/Hashtable;

.field private static k:Ljava/util/Hashtable;

.field private static l:Ljava/util/Hashtable;

.field private static m:Ljava/util/Hashtable;

.field private static n:Ljava/util/Hashtable;

.field private static o:Z

.field private static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/creativemobi/engine/ac;->a:[I

    .line 27
    const-string v0, "BeatBossMask on level %1$d distance %2$d"

    sput-object v0, Lcom/creativemobi/engine/ac;->b:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/creativemobi/engine/ac;->i:Z

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/creativemobi/engine/ac;->j:Ljava/util/Hashtable;

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/creativemobi/engine/ac;->k:Ljava/util/Hashtable;

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/creativemobi/engine/ac;->l:Ljava/util/Hashtable;

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/creativemobi/engine/ac;->m:Ljava/util/Hashtable;

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/creativemobi/engine/ac;->n:Ljava/util/Hashtable;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/creativemobi/engine/ac;->o:Z

    .line 53
    const-string v0, "preference.dat"

    sput-object v0, Lcom/creativemobi/engine/ac;->p:Ljava/lang/String;

    return-void

    .line 24
    :array_0
    .array-data 4
        0x190
        0x320
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 2

    .prologue
    .line 389
    const/16 v0, 0x1388

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 181
    move v0, v5

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 182
    sget-object v1, Lcom/creativemobi/engine/ac;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 183
    const-string v2, "DragRacingOptions"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 184
    if-nez v1, :cond_0

    .line 186
    :goto_1
    return v0

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    const/16 v0, 0x9

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 234
    sget-object v0, Lcom/creativemobi/engine/ac;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/creativemobi/engine/ac;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 235
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "DragRacingOptions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    sget-boolean v0, Lcom/creativemobi/engine/ac;->o:Z

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x4000

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 61
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    sget-object v0, Lcom/creativemobi/engine/ac;->j:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 64
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 66
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 68
    sget-object v4, Lcom/creativemobi/engine/ac;->j:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 72
    sget-object v0, Lcom/creativemobi/engine/ac;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 73
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 75
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 77
    sget-object v4, Lcom/creativemobi/engine/ac;->k:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 81
    sget-object v0, Lcom/creativemobi/engine/ac;->l:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 82
    :goto_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 84
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 86
    sget-object v4, Lcom/creativemobi/engine/ac;->l:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_3

    .line 88
    :cond_3
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 90
    sget-object v0, Lcom/creativemobi/engine/ac;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 91
    :goto_4
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 93
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 95
    sget-object v4, Lcom/creativemobi/engine/ac;->m:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_4

    .line 97
    :cond_4
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 99
    sget-object v0, Lcom/creativemobi/engine/ac;->n:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 100
    :goto_5
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 102
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    sget-object v4, Lcom/creativemobi/engine/ac;->n:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_5

    .line 106
    :cond_5
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 108
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 109
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 111
    sget-object v1, Lcom/creativemobi/engine/ac;->p:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 112
    array-length v2, v0

    invoke-virtual {v1, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 113
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 174
    const-string v0, "DragRacingOptions"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    sget-object v1, Lcom/creativemobi/engine/ac;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lcom/creativemobi/engine/ac;->l:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "DragRacingOptions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 215
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcom/creativemobi/engine/ac;->k:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "DragRacingOptions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 203
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/creativemobi/engine/ac;->m:Ljava/util/Hashtable;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "DragRacingOptions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/creativemobi/engine/ac;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v0, "DragRacingOptions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/creativemobi/engine/ac;->n:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v0, "DragRacingOptions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lcom/creativemobi/engine/ac;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/creativemobi/engine/ac;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    const-string v0, "DragRacingOptions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f06001e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/aa;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {p0, v0}, Lcom/creativemobi/engine/ac;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    if-nez v0, :cond_1

    move v0, v2

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    invoke-static {v0}, Lcom/creativemobi/engine/aa;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 348
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 350
    const/16 v1, 0x1388

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    const/16 v0, 0x64

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lcom/creativemobi/engine/ac;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/creativemobi/engine/ac;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    const-string v0, "DragRacingOptions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    const-string v0, "DragRacingOptions"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "test"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/creativemobi/engine/ac;->o:Z

    if-nez v0, :cond_2

    .line 171
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 117
    goto :goto_0

    .line 119
    :cond_2
    sget-object v0, Lcom/creativemobi/engine/ac;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 121
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 122
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 124
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 125
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 128
    sget-object v2, Lcom/creativemobi/engine/ac;->j:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 129
    :goto_1
    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 132
    sget-object v3, Lcom/creativemobi/engine/ac;->j:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 137
    sget-object v2, Lcom/creativemobi/engine/ac;->k:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 138
    :goto_2
    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 141
    sget-object v3, Lcom/creativemobi/engine/ac;->k:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    goto :goto_2

    .line 145
    :cond_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 146
    sget-object v2, Lcom/creativemobi/engine/ac;->l:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 147
    :goto_3
    if-eqz v0, :cond_5

    .line 148
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    .line 150
    sget-object v3, Lcom/creativemobi/engine/ac;->l:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    goto :goto_3

    .line 154
    :cond_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 155
    sget-object v2, Lcom/creativemobi/engine/ac;->m:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 156
    :goto_4
    if-eqz v0, :cond_6

    .line 157
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 159
    sget-object v4, Lcom/creativemobi/engine/ac;->m:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    goto :goto_4

    .line 163
    :cond_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 164
    sget-object v2, Lcom/creativemobi/engine/ac;->n:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 165
    :goto_5
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    .line 168
    sget-object v3, Lcom/creativemobi/engine/ac;->n:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    goto :goto_5
.end method

.method public static b(Landroid/content/Context;II)V
    .locals 3

    .prologue
    const/16 v0, 0x1388

    .line 329
    if-le p2, v0, :cond_1

    .line 330
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f06001f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/aa;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f06001e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/creativemobi/engine/aa;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-static {p0, v1, v0}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-boolean v0, Lcom/creativemobi/engine/ac;->o:Z

    if-eqz v0, :cond_0

    .line 335
    :try_start_0
    invoke-static {p0}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    sget-object v0, Lcom/creativemobi/engine/ac;->n:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/creativemobi/engine/ac;->n:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    const-string v0, "DragRacingOptions"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/creativemobi/engine/ac;->n:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/creativemobi/engine/ac;->n:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 245
    :goto_0
    return v0

    :cond_0
    const-string v0, "DragRacingOptions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/creativemobi/engine/ac;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/creativemobi/engine/ac;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 261
    :goto_0
    return v0

    :cond_0
    const-string v0, "DragRacingOptions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)[I
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 190
    new-array v0, v8, [I

    move v1, v7

    .line 191
    :goto_0
    if-ge v1, v8, :cond_2

    move v2, v7

    .line 192
    :goto_1
    sget-object v3, Lcom/creativemobi/engine/ac;->a:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 193
    sget-object v3, Lcom/creativemobi/engine/ac;->b:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    sget-object v6, Lcom/creativemobi/engine/ac;->a:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 194
    const-string v4, "DragRacingOptions"

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 195
    if-eqz v3, :cond_0

    aget v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v1

    .line 192
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_2
    return-object v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/creativemobi/engine/ac;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DragRacingOptions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 279
    sget-boolean v0, Lcom/creativemobi/engine/ac;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/creativemobi/engine/ac;->m(Landroid/content/Context;)V

    .line 280
    :cond_0
    sget-boolean v0, Lcom/creativemobi/engine/ac;->c:Z

    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 284
    sget-boolean v0, Lcom/creativemobi/engine/ac;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/creativemobi/engine/ac;->m(Landroid/content/Context;)V

    .line 285
    :cond_0
    sget-boolean v0, Lcom/creativemobi/engine/ac;->d:Z

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 290
    sget-boolean v0, Lcom/creativemobi/engine/ac;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/creativemobi/engine/ac;->m(Landroid/content/Context;)V

    .line 291
    :cond_0
    sget-boolean v0, Lcom/creativemobi/engine/ac;->g:Z

    return v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 295
    sget-boolean v0, Lcom/creativemobi/engine/ac;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/creativemobi/engine/ac;->m(Landroid/content/Context;)V

    .line 296
    :cond_0
    sget-boolean v0, Lcom/creativemobi/engine/ac;->e:Z

    return v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 304
    sget-boolean v0, Lcom/creativemobi/engine/ac;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/creativemobi/engine/ac;->m(Landroid/content/Context;)V

    .line 305
    :cond_0
    sget-boolean v0, Lcom/creativemobi/engine/ac;->f:Z

    return v0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 359
    invoke-static {p0}, Lcom/creativemobi/engine/ac;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 360
    :cond_0
    const-string v0, "true"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/aa;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 361
    const-string v1, "encoded_level"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/creativemobi/engine/aa;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {p0, v1, v0}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :try_start_0
    invoke-static {p0}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 370
    const-string v0, "USE_Phone_ID_PASSWORD"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static k(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 374
    const-string v0, "USE_Phone_ID_PASSWORD"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 375
    invoke-static {p0}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;)V

    .line 376
    return-void
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 379
    const-string v0, "encoded_level"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/aa;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {p0, v0}, Lcom/creativemobi/engine/ac;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static m(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 270
    const-string v0, "metricUnits"

    invoke-static {p0, v0, v1}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/creativemobi/engine/ac;->f:Z

    .line 271
    const-string v0, "sound"

    invoke-static {p0, v0, v2}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/creativemobi/engine/ac;->c:Z

    .line 272
    const-string v0, "vibration"

    invoke-static {p0, v0, v1}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/creativemobi/engine/ac;->d:Z

    .line 273
    const-string v0, "indicator"

    invoke-static {p0, v0, v2}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/creativemobi/engine/ac;->e:Z

    .line 274
    const-string v0, "multitouch"

    invoke-static {p0, v0, v1}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/creativemobi/engine/ac;->g:Z

    .line 275
    const-string v0, "antialias"

    invoke-static {p0, v0, v1}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/creativemobi/engine/ac;->h:Z

    .line 276
    return-void
.end method
