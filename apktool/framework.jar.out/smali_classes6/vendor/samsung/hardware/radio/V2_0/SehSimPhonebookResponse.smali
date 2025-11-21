.class public final Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;
.super Ljava/lang/Object;
.source "SehSimPhonebookResponse.java"


# instance fields
.field public blacklist alphaTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist dataTypeAlphas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist dataTypeNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist lengthAlphas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist lengthNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist nextIndex:I

.field public blacklist numbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist recordIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x68

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v3, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;

    invoke-direct {v3}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;-><init>()V

    mul-int/lit8 v5, v1, 0x68

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x68

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;

    mul-int/lit8 v5, v4, 0x68

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;

    iget-object v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    iget v3, p1, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget p0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    iget p1, p1, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    if-eq p0, p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 9

    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 14

    move-object/from16 v0, p2

    const-wide/16 v1, 0x8

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    mul-int/lit8 v2, v1, 0x4

    int-to-long v4, v2

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v3, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    move v3, v11

    :goto_0
    if-ge v3, v1, :cond_0

    mul-int/lit8 v4, v3, 0x4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iget-object v5, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x10

    add-long v8, p3, v1

    const-wide/16 v1, 0x18

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    mul-int/lit8 v2, v1, 0x4

    int-to-long v4, v2

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v3, v11

    :goto_1
    if-ge v3, v1, :cond_1

    mul-int/lit8 v4, v3, 0x4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iget-object v5, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x20

    add-long v8, p3, v1

    const-wide/16 v1, 0x28

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    mul-int/lit8 v2, v1, 0x10

    int-to-long v4, v2

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v12, v11

    :goto_2
    if-ge v12, v1, :cond_2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    mul-int/lit8 v3, v12, 0x10

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    int-to-long v8, v3

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x30

    add-long v8, p3, v1

    const-wide/16 v1, 0x38

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    mul-int/lit8 v2, v1, 0x4

    int-to-long v4, v2

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v3, v11

    :goto_3
    if-ge v3, v1, :cond_3

    mul-int/lit8 v4, v3, 0x4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iget-object v5, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v1, 0x40

    add-long v8, p3, v1

    const-wide/16 v1, 0x48

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    mul-int/lit8 v2, v1, 0x4

    int-to-long v4, v2

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v3, v11

    :goto_4
    if-ge v3, v1, :cond_4

    mul-int/lit8 v4, v3, 0x4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iget-object v5, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v1, 0x50

    add-long v8, p3, v1

    const-wide/16 v1, 0x58

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    mul-int/lit8 v2, v1, 0x10

    int-to-long v4, v2

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_5
    if-ge v11, v1, :cond_5

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    mul-int/lit8 v3, v11, 0x10

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    int-to-long v8, v3

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    const-wide/16 v1, 0x60

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    const-wide/16 v1, 0x64

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x68

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{.lengthAlphas = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .dataTypeAlphas = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .alphaTags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .lengthNumbers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .dataTypeNumbers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .numbers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .recordIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .nextIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 9

    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x8

    add-long/2addr v1, p2

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    add-long/2addr v1, p2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v2, v0, 0x4

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v4, v2, 0x4

    int-to-long v4, v4

    iget-object v6, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    invoke-virtual {p1, v4, v5, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x1c

    add-long/2addr v4, p2

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v0, 0x4

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_1

    mul-int/lit8 v6, v5, 0x4

    int-to-long v6, v6

    iget-object v8, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v2, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    invoke-virtual {p1, v4, v5, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x2c

    add-long/2addr v4, p2

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v0, 0x10

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    move v5, v3

    :goto_2
    if-ge v5, v0, :cond_2

    mul-int/lit8 v6, v5, 0x10

    int-to-long v6, v6

    iget-object v8, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1, v2, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x30

    add-long/2addr v1, p2

    const-wide/16 v4, 0x38

    add-long/2addr v4, p2

    invoke-virtual {p1, v4, v5, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x3c

    add-long/2addr v4, p2

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v0, 0x4

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    move v5, v3

    :goto_3
    if-ge v5, v0, :cond_3

    mul-int/lit8 v6, v5, 0x4

    int-to-long v6, v6

    iget-object v8, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1, v2, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x40

    add-long/2addr v1, p2

    const-wide/16 v4, 0x48

    add-long/2addr v4, p2

    invoke-virtual {p1, v4, v5, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x4c

    add-long/2addr v4, p2

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v0, 0x4

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    move v5, v3

    :goto_4
    if-ge v5, v0, :cond_4

    mul-int/lit8 v6, v5, 0x4

    int-to-long v6, v6

    iget-object v8, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1, v2, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x50

    add-long/2addr v1, p2

    const-wide/16 v4, 0x58

    add-long/2addr v4, p2

    invoke-virtual {p1, v4, v5, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x5c

    add-long/2addr v4, p2

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v0, 0x10

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    :goto_5
    if-ge v3, v0, :cond_5

    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    iget-object v7, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1, v2, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x64

    add-long/2addr p2, v0

    iget p0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
