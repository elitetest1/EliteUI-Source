.class public Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialSmsMsg"
.end annotation


# instance fields
.field public greylist-max-o msgCount:I

.field public greylist-max-o msgIndType:I


# direct methods
.method public constructor greylist-max-o <init>()V
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
    check-cast p1, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    iget v2, p0, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    iget v3, p1, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    iget p1, p1, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
