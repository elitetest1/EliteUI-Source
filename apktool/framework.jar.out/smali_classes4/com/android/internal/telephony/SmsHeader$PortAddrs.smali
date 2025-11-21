.class public Lcom/android/internal/telephony/SmsHeader$PortAddrs;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PortAddrs"
.end annotation


# instance fields
.field public greylist-max-o areEightBits:Z

.field public greylist destPort:I

.field public greylist origPort:I


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    iget v3, p1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iget v3, p1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    iget-boolean p1, p1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
