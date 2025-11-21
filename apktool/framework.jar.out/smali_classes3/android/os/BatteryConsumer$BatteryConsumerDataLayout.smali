.class Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryConsumerDataLayout"
.end annotation


# static fields
.field private static final blacklist KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final blacklist columnCount:I

.field public final blacklist customPowerComponentCount:I

.field public final blacklist customPowerComponentNames:[Ljava/lang/String;

.field public final blacklist indexedKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryConsumer$Key;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist keys:[Landroid/os/BatteryConsumer$Key;

.field private blacklist mPerComponentKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/os/BatteryConsumer$Key;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist powerComponentIds:[I

.field public final blacklist powerStateDataIncluded:Z

.field public final blacklist processStateDataIncluded:Z

.field public final blacklist screenStateDataIncluded:Z

.field public final blacklist totalConsumedPowerColumnIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method private constructor blacklist <init>(I[Ljava/lang/String;ZZZ)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentNames:[Ljava/lang/String;

    array-length p2, p2

    iput p2, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    iput-boolean p3, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    iput-boolean p4, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    iput-boolean p5, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    const/16 v0, 0x14

    add-int/2addr p2, v0

    new-array p2, p2, [I

    iput-object p2, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    const/4 p2, 0x0

    move v1, p2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_1
    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    add-int/lit8 v3, v2, 0x1

    add-int/lit16 v4, v0, 0x3e8

    aput v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p1, 0x1

    iput p1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, p2

    :goto_2
    const/4 p1, 0x3

    if-ge v5, p1, :cond_6

    if-nez p4, :cond_2

    if-eqz v5, :cond_2

    goto :goto_6

    :cond_2
    move v6, p2

    :goto_3
    if-ge v6, p1, :cond_5

    if-nez p5, :cond_3

    if-eqz v6, :cond_3

    goto :goto_5

    :cond_3
    move v7, v0

    move v0, p2

    :goto_4
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v3, v1

    if-ge v0, v3, :cond_4

    aget v4, v1, v0

    move-object v1, p0

    move v3, p3

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->addKeys(Ljava/util/List;ZIIII)I

    move-result v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v7

    :goto_5
    move-object v1, p0

    move v3, p3

    add-int/lit8 v6, v6, 0x1

    move-object p0, v1

    move p3, v3

    goto :goto_3

    :cond_5
    :goto_6
    move-object v1, p0

    move v3, p3

    add-int/lit8 v5, v5, 0x1

    move-object p0, v1

    move p3, v3

    goto :goto_2

    :cond_6
    move-object v1, p0

    iput v0, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->columnCount:I

    sget-object p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/BatteryConsumer$Key;

    iput-object p0, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    new-instance p1, Landroid/util/SparseArray;

    array-length p0, p0

    invoke-direct {p1, p0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->indexedKeys:Landroid/util/SparseArray;

    :goto_7
    iget-object p0, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length p1, p0

    if-ge p2, p1, :cond_7

    aget-object p0, p0, p2

    iget-object p1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->indexedKeys:Landroid/util/SparseArray;

    iget p3, p0, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget p4, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iget p5, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-direct {v1, p3, p4, p5, v0}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keyIndex(IIII)I

    move-result p3

    invoke-virtual {p1, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method synthetic constructor blacklist <init>(I[Ljava/lang/String;ZZZLandroid/os/BatteryConsumer-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;-><init>(I[Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private blacklist addKeys(Ljava/util/List;ZIIII)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryConsumer$Key;",
            ">;ZIIII)I"
        }
    .end annotation

    new-instance v0, Landroid/os/BatteryConsumer$Key;

    add-int/lit8 v6, p6, 0x1

    add-int/lit8 v8, p6, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    move v1, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v7}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIIILandroid/os/BatteryConsumer-IA;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_1

    const/16 v0, 0x12

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    return v8

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetSUPPORTED_POWER_COMPONENTS_PER_PROCESS_STATE()Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v0

    if-gez v0, :cond_3

    const/16 v0, 0x3e8

    if-lt p3, v0, :cond_2

    goto :goto_1

    :cond_2
    return v8

    :cond_3
    :goto_1
    const/4 v0, 0x0

    move v2, v0

    move v5, v8

    :goto_2
    const/4 v0, 0x5

    if-ge v2, v0, :cond_5

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/os/BatteryConsumer$Key;

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v8, v5, 0x2

    const/4 v7, 0x0

    move v1, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v7}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIIILandroid/os/BatteryConsumer-IA;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v5
.end method

.method private blacklist keyIndex(IIII)I
    .locals 0

    shl-int/lit8 p0, p1, 0x7

    shl-int/lit8 p1, p2, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0x2

    or-int/2addr p0, p1

    or-int/2addr p0, p4

    return p0
.end method


# virtual methods
.method blacklist getKey(IIII)Landroid/os/BatteryConsumer$Key;
    .locals 1

    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->indexedKeys:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keyIndex(IIII)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryConsumer$Key;

    return-object p0
.end method

.method blacklist getKeyOrThrow(IIII)Landroid/os/BatteryConsumer$Key;
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported power component ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Landroid/os/BatteryConsumer$Key;->toString(IIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/BatteryConsumer$Key;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    iget v5, v4, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    if-ne v5, p1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/BatteryConsumer$Key;

    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist getPowerComponentName(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x14

    if-ge p1, v0, :cond_0

    invoke-static {p1}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_1

    iget-object p0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentNames:[Ljava/lang/String;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported power component "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
