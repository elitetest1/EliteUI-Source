.class public Lcom/samsung/vekit/Common/Object/FrcSupportInfo;
.super Ljava/lang/Object;
.source "FrcSupportInfo.java"


# instance fields
.field private blacklist frcSupportInfo:[[Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/vekit/Common/Type/FpsType;->values()[Lcom/samsung/vekit/Common/Type/FpsType;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/samsung/vekit/Common/Type/SpeedType;->values()[Lcom/samsung/vekit/Common/Type/SpeedType;

    move-result-object v1

    array-length v1, v1

    new-array v2, v0, [[Z

    iput-object v2, p0, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->frcSupportInfo:[[Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->frcSupportInfo:[[Z

    new-array v5, v1, [Z

    aput-object v5, v4, v3

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_0

    iget-object v5, p0, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->frcSupportInfo:[[Z

    aget-object v5, v5, v3

    aput-boolean v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist checkFrcAvailable(Lcom/samsung/vekit/Common/Type/FpsType;Lcom/samsung/vekit/Common/Type/SpeedType;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->frcSupportInfo:[[Z

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/FpsType;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {p2}, Lcom/samsung/vekit/Common/Type/SpeedType;->ordinal()I

    move-result p1

    aget-boolean p0, p0, p1

    return p0
.end method

.method public blacklist setFrcAvailable(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->frcSupportInfo:[[Z

    aget-object p0, p0, p1

    aput-boolean p3, p0, p2

    return-void
.end method

.method public blacklist setFrcAvailable(Lcom/samsung/vekit/Common/Type/FpsType;Lcom/samsung/vekit/Common/Type/SpeedType;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->frcSupportInfo:[[Z

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/FpsType;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {p2}, Lcom/samsung/vekit/Common/Type/SpeedType;->ordinal()I

    move-result p1

    aput-boolean p3, p0, p1

    return-void
.end method
