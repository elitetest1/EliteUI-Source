.class public Lcom/google/android/mms/pdu/AcknowledgeInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "AcknowledgeInd.java"


# direct methods
.method public constructor greylist <init>(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setMessageType(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setMmsVersion(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setTransactionId([B)V

    return-void
.end method

.method constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-void
.end method


# virtual methods
.method public blacklist getReportAllowed()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/AcknowledgeInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x91

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result p0

    return p0
.end method

.method public blacklist getTransactionId()[B
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/AcknowledgeInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r setReportAllowed(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/mms/pdu/AcknowledgeInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x91

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public greylist setTransactionId([B)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/AcknowledgeInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v0, 0x98

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method
