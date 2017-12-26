.class Lcom/skipping/StatisticsActivity$myListAdapterWeight;
.super Landroid/widget/BaseAdapter;
.source "StatisticsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skipping/StatisticsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myListAdapterWeight"
.end annotation


# instance fields
.field private arrayMyData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWeight;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/skipping/StatisticsActivity;


# direct methods
.method public constructor <init>(Lcom/skipping/StatisticsActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWeight;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1285
    .local p3, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldatabase/MyWeight;>;"
    iput-object p1, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->this$0:Lcom/skipping/StatisticsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1286
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1287
    invoke-virtual {p0, p3}, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->setArrayMyData(Ljava/util/ArrayList;)V

    .line 1288
    return-void
.end method


# virtual methods
.method public getArrayMyData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWeight;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->arrayMyData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->arrayMyData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1308
    iget-object v1, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->arrayMyData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldatabase/MyWeight;

    .line 1309
    .local v0, "md":Ldatabase/MyWeight;
    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {v0}, Ldatabase/MyWeight;->getID()J

    move-result-wide v1

    .line 1312
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1317
    if-nez p2, :cond_0

    .line 1318
    iget-object v8, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030012

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1320
    :cond_0
    const v8, 0x7f0a0011

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1321
    .local v2, "date_weight":Landroid/widget/TextView;
    const v8, 0x7f0a0012

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1330
    .local v7, "weight":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->this$0:Lcom/skipping/StatisticsActivity;

    invoke-virtual {v8}, Lcom/skipping/StatisticsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 1331
    .local v0, "dateFormat":Ljava/text/DateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "HH:mm"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1334
    .local v1, "dateFormat1":Ljava/text/SimpleDateFormat;
    iget-object v8, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->arrayMyData:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldatabase/MyWeight;

    .line 1351
    .local v3, "md":Ldatabase/MyWeight;
    iget-object v8, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->this$0:Lcom/skipping/StatisticsActivity;

    iget v8, v8, Lcom/skipping/StatisticsActivity;->WeightUnit:I

    if-nez v8, :cond_2

    .line 1353
    invoke-virtual {v3}, Ldatabase/MyWeight;->getWeight()J

    move-result-wide v8

    long-to-float v8, v8

    const v9, 0x47c35000    # 100000.0f

    div-float v4, v8, v9

    .line 1354
    .local v4, "temp_weight":F
    float-to-int v8, v4

    int-to-float v4, v8

    .line 1355
    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v4, v8

    .line 1357
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->this$0:Lcom/skipping/StatisticsActivity;

    const v10, 0x7f05002c

    invoke-virtual {v9, v10}, Lcom/skipping/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1399
    .end local v4    # "temp_weight":F
    :cond_1
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ldatabase/MyWeight;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1404
    return-object p2

    .line 1360
    :cond_2
    iget-object v8, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->this$0:Lcom/skipping/StatisticsActivity;

    iget v8, v8, Lcom/skipping/StatisticsActivity;->WeightUnit:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 1362
    invoke-virtual {v3}, Ldatabase/MyWeight;->getWeight()J

    move-result-wide v8

    const-wide/32 v10, 0x186a0

    div-long/2addr v8, v10

    long-to-float v8, v8

    const v9, 0x3ee83d42

    div-float v4, v8, v9

    .line 1366
    .restart local v4    # "temp_weight":F
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v4, v8

    .line 1368
    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v4, v8

    .line 1373
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->this$0:Lcom/skipping/StatisticsActivity;

    const v10, 0x7f050030

    invoke-virtual {v9, v10}, Lcom/skipping/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1375
    .end local v4    # "temp_weight":F
    :cond_3
    iget-object v8, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->this$0:Lcom/skipping/StatisticsActivity;

    iget v8, v8, Lcom/skipping/StatisticsActivity;->WeightUnit:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 1377
    invoke-virtual {v3}, Ldatabase/MyWeight;->getWeight()J

    move-result-wide v8

    long-to-float v8, v8

    const v9, 0x49742400    # 1000000.0f

    div-float/2addr v8, v9

    const v9, 0x40cb359a

    div-float/2addr v8, v9

    float-to-int v4, v8

    .line 1379
    .local v4, "temp_weight":I
    invoke-virtual {v3}, Ldatabase/MyWeight;->getWeight()J

    move-result-wide v8

    long-to-float v8, v8

    const v9, 0x49742400    # 1000000.0f

    div-float/2addr v8, v9

    int-to-float v9, v4

    const v10, 0x40cb359a

    mul-float/2addr v9, v10

    sub-float v5, v8, v9

    .line 1381
    .local v5, "temp_weight1":F
    const v8, 0x3ee83d42

    div-float v6, v5, v8

    .line 1385
    .local v6, "temp_weight2":F
    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v6, v8

    .line 1389
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v6, v8

    .line 1391
    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v6, v8

    .line 1395
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->this$0:Lcom/skipping/StatisticsActivity;

    const v10, 0x7f050031

    invoke-virtual {v9, v10}, Lcom/skipping/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->this$0:Lcom/skipping/StatisticsActivity;

    const v10, 0x7f050030

    invoke-virtual {v9, v10}, Lcom/skipping/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setArrayMyData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWeight;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1295
    .local p1, "arrayMyData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldatabase/MyWeight;>;"
    iput-object p1, p0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->arrayMyData:Ljava/util/ArrayList;

    .line 1296
    return-void
.end method
