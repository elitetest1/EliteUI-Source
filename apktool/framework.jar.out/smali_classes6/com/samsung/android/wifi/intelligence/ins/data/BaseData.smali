.class public abstract Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;
.super Ljava/lang/Object;
.source "BaseData.java"


# instance fields
.field blacklist cmLabel:I

.field blacklist flushTimestamp:Ljava/lang/String;

.field blacklist label:I

.field blacklist timestamp:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getCmLabel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;->cmLabel:I

    return p0
.end method

.method public blacklist getFlushTimestamp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;->flushTimestamp:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getLabel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;->label:I

    return p0
.end method

.method public blacklist getTimestamp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;->timestamp:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCmLabel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;->cmLabel:I

    return-void
.end method

.method public blacklist setFlushTimestamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;->flushTimestamp:Ljava/lang/String;

    return-void
.end method

.method public blacklist setLabel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;->label:I

    return-void
.end method

.method public abstract blacklist toCsvString()Ljava/lang/String;
.end method
