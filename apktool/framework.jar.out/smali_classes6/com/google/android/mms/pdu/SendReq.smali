.class public Lcom/google/android/mms/pdu/SendReq;
.super Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.source "SendReq.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SendReq"


# direct methods
.method public constructor greylist <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setMessageType(I)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V

    const-string v0, "application/vnd.wap.multipart.related"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v1, "insert-address-token"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    invoke-direct {p0}, Lcom/google/android/mms/pdu/SendReq;->generateTransactionId()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setTransactionId([B)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "SendReq"

    const-string v1, "Unexpected InvalidHeaderValueException."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method constructor blacklist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-void
.end method

.method constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    return-void
.end method

.method public constructor blacklist <init>([BLcom/google/android/mms/pdu/EncodedStringValue;I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setMessageType(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    invoke-virtual {p0, p3}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V

    invoke-virtual {p0, p4}, Lcom/google/android/mms/pdu/SendReq;->setTransactionId([B)V

    return-void
.end method

.method private blacklist generateTransactionId()[B
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "T"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist addBcc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x81

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public greylist addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x82

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public greylist getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p0

    return-object p0
.end method

.method public greylist getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p0

    return-object p0
.end method

.method public greylist getContentType()[B
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    return-object p0
.end method

.method public greylist getDeliveryReport()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDeliveryTime()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getExpiry()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getMessageClass()[B
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    return-object p0
.end method

.method public greylist getMessageSize()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getReadReport()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result p0

    return p0
.end method

.method public blacklist getReserved()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0xc0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getTransactionId()[B
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    return-object p0
.end method

.method public greylist setBcc([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x81

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public greylist-max-r setCc([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x82

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public greylist setContentType([B)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x84

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method

.method public greylist setDeliveryReport(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x86

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public blacklist setDeliveryTime(J)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x87

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public greylist setExpiry(J)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x88

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public greylist setMessageClass([B)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x8a

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method

.method public greylist setMessageSize(J)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x8e

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public greylist setReadReport(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x90

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public blacklist setReserved(J)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0xc0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public greylist setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x97

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public greylist setTransactionId([B)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x98

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method
