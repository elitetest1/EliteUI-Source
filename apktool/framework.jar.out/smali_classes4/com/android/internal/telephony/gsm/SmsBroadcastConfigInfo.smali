.class public final Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
.super Ljava/lang/Object;
.source "SmsBroadcastConfigInfo.java"


# instance fields
.field private blacklist mFromCodeScheme:I

.field private blacklist mFromServiceId:I

.field private blacklist mSelected:Z

.field private blacklist mToCodeScheme:I

.field private blacklist mToServiceId:I


# direct methods
.method public constructor blacklist <init>(IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    iput p2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    iput p3, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    iput p4, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    iput-boolean p5, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    iget v2, p1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    iget v2, p1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    iget v2, p1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    iget v2, p1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    iget-boolean p1, p1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public blacklist getFromCodeScheme()I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    return p0
.end method

.method public blacklist getFromServiceId()I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    return p0
.end method

.method public blacklist getToCodeScheme()I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    return p0
.end method

.method public blacklist getToServiceId()I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean p0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    return p0
.end method

.method public blacklist setFromCodeScheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    return-void
.end method

.method public blacklist setFromServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    return-void
.end method

.method public blacklist setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    return-void
.end method

.method public blacklist setToCodeScheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    return-void
.end method

.method public blacklist setToServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmsBroadcastConfigInfo: Id ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Code ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    if-eqz p0, :cond_0

    const-string p0, "ENABLED"

    goto :goto_0

    :cond_0
    const-string p0, "DISABLED"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
