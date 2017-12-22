.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field keys:[I

.field levelBitsList:I

.field mask:I

.field shift:I

.field values:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1174
    const-class v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(II)V
    .locals 2

    .prologue
    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    iput p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    .line 1183
    iput p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    .line 1184
    and-int/lit8 v0, p1, 0xf

    .line 1185
    sget-boolean v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1186
    :cond_0
    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 1187
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    .line 1188
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    .line 1189
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    .line 1190
    return-void
.end method


# virtual methods
.method get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1193
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    shr-int v0, p1, v0

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    and-int/2addr v0, v1

    .line 1194
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aget v1, v1, v0

    .line 1195
    if-ne v1, p1, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    .line 1204
    :goto_0
    return-object v0

    .line 1198
    :cond_0
    if-nez v1, :cond_1

    .line 1199
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    .line 1200
    if-eqz v0, :cond_1

    .line 1201
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1208
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    shr-int v0, p1, v0

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    and-int/2addr v1, v0

    .line 1209
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aget v0, v0, v1

    .line 1210
    if-ne v0, p1, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    invoke-static {v0, v1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->access$2000([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    .line 1230
    :goto_0
    return-object p2

    .line 1213
    :cond_0
    if-nez v0, :cond_3

    .line 1214
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    .line 1215
    if-eqz v0, :cond_1

    .line 1216
    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aput p1, v0, v1

    .line 1219
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    invoke-static {p3}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->access$2100(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    :goto_1
    aput-object v0, v2, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 1224
    :cond_3
    new-instance v2, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    iget v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    shr-int/lit8 v3, v3, 0x4

    iget v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    iget v5, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    and-int/lit8 v5, v5, 0xf

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;-><init>(II)V

    .line 1225
    iget v3, v2, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    shr-int v3, v0, v3

    iget v4, v2, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    and-int/2addr v3, v4

    .line 1226
    iget-object v4, v2, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aput v0, v4, v3

    .line 1227
    iget-object v0, v2, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v0, v3

    .line 1228
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 1229
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 1230
    invoke-virtual {v2, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method
