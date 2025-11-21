.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_VALIDITY_PERIOD:I = -0x1

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final blacklist SALES_CODE:Ljava/lang/String;

.field private static final blacklist VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x3

.field private static final blacklist VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x1

.field private static final blacklist VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field private static final blacklist VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x2

.field private static final blacklist VALIDITY_PERIOD_MAX:I = 0x9b0a0

.field private static final blacklist VALIDITY_PERIOD_MIN:I = 0x5

.field private static final blacklist VDBG:Z = false

.field private static blacklist mIgnoreSpecialChar:Z

.field private static blacklist mUnsupportedDatacodingScheme:Z


# instance fields
.field private blacklist mDataCodingScheme:I

.field private blacklist mIsStatusReportMessage:Z

.field private blacklist mProtocolIdentifier:I

.field private blacklist mReplyPathPresent:Z

.field private blacklist mStatus:I

.field private blacklist mVoiceMailCount:I

.field private blacklist messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmUnsupportedDatacodingScheme()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/SmsMessage;->SALES_CODE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return-void
.end method

.method public static greylist calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111025e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, v1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_3

    sget-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p1

    sput-boolean v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1

    :cond_3
    return-object v2
.end method

.method public static blacklist calculateLengthForCdma(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 5

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p1

    if-nez p1, :cond_6

    new-instance p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {p1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    mul-int/lit8 p2, p2, 0x2

    if-lez p2, :cond_0

    rsub-int v0, p2, 0x8b

    goto :goto_0

    :cond_0
    const/16 v0, 0x8c

    :goto_0
    if-lez p2, :cond_1

    rsub-int v1, p2, 0x85

    goto :goto_1

    :cond_1
    const/16 v1, 0x86

    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    iput p0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    const/4 p0, -0x1

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    if-le v2, v0, :cond_4

    add-int/lit8 v0, v0, -0x2

    if-le p2, v0, :cond_2

    iput v3, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput p0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_2
    rem-int p0, v2, v1

    if-eqz p0, :cond_3

    div-int/2addr v2, v1

    add-int/2addr v2, v4

    iput v2, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_3
    div-int/2addr v2, v1

    iput v2, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 p0, 0x0

    iput p0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, -0x2

    if-lt p2, v1, :cond_5

    iput v3, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput p0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_5
    iput v4, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_2
    const/4 p0, 0x3

    iput p0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    :cond_6
    return-object p1
.end method

.method public static blacklist calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4

    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p0, v0, p3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_8

    new-instance p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {p1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    mul-int/lit8 p3, p3, 0x2

    if-lez p3, :cond_2

    rsub-int p2, p3, 0x8b

    goto :goto_1

    :cond_2
    const/16 p2, 0x8c

    :goto_1
    if-lez p3, :cond_3

    rsub-int v1, p3, 0x85

    goto :goto_2

    :cond_3
    const/16 v1, 0x86

    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    iput p0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    const/4 p0, -0x1

    const/16 v3, 0x3e8

    if-le v2, p2, :cond_6

    add-int/lit8 p2, p2, -0x2

    if-le p3, p2, :cond_4

    iput v3, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput p0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_4
    rem-int p0, v2, v1

    if-eqz p0, :cond_5

    div-int/2addr v2, v1

    add-int/2addr v2, v0

    iput v2, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_5
    div-int/2addr v2, v1

    iput v2, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 p0, 0x0

    iput p0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, -0x2

    if-lt p3, v1, :cond_7

    iput v3, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput p0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_7
    iput v0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_3
    const/4 p0, 0x3

    iput p0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    :cond_8
    return-object p1
.end method

.method public static blacklist calculateLengthWithEncodingType(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static greylist-max-q createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 6

    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    iput p0, v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

    const/4 p0, 0x0

    aget-byte v3, p1, p0

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_0

    const-string p0, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    and-int/lit8 v3, v3, 0x7

    iput v3, v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v5, v3, [B

    invoke-static {p1, v4, v5, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    const-string p1, "SMS PDU parsing failed: "

    invoke-static {v0, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static greylist createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 1

    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist decToBcd(I)I
    .locals 1

    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 p0, p0, 0xa

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr p0, v0

    return p0
.end method

.method private static greylist encodeUCS2(Ljava/lang/String;[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const-string/jumbo v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    array-length v2, p1

    array-length v3, p0

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    new-array v2, v2, [B

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    array-length v3, p1

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p1, v1

    array-length v3, p0

    invoke-static {p0, v0, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    :cond_0
    array-length p1, p0

    const/16 v2, 0xff

    if-gt p1, v2, :cond_1

    array-length p1, p0

    add-int/2addr p1, v1

    new-array p1, p1, [B

    array-length v3, p0

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    array-length v2, p0

    invoke-static {p0, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    const-string p1, "Payload cannot exceed 255 bytes"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static blacklist getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    iget v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    if-nez v6, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput v6, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v4, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    goto :goto_0

    :cond_2
    move-object v8, v2

    :goto_0
    new-instance v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v9}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0xb4

    invoke-direct {v10, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    if-nez p0, :cond_3

    iput-object v2, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_1

    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v11

    iput-object v11, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    :goto_1
    invoke-virtual {v10, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v11, v3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    const-string v13, "Implausible UnsupportedEncodingException "

    const/4 v14, 0x2

    const-string v15, "SmsMessage"

    if-ge v11, v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v2

    const-string v2, "Address is "

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Address is Alphabetic."

    invoke-static {v15, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v2, v0

    sub-int/2addr v2, v7

    mul-int/2addr v2, v14

    invoke-virtual {v10, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0xd0

    invoke-virtual {v10, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v2, v0

    sub-int/2addr v2, v7

    invoke-virtual {v10, v0, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v15, v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v16

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    goto :goto_2

    :cond_5
    move-object/from16 v16, v2

    const-string v2, "Address is Numeric."

    invoke-static {v15, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_6

    return-object v16

    :cond_6
    array-length v2, v0

    sub-int/2addr v2, v7

    mul-int/2addr v2, v14

    array-length v11, v0

    sub-int/2addr v11, v7

    aget-byte v11, v0, v11

    const/16 v12, 0xf0

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_7

    move v11, v7

    goto :goto_3

    :cond_7
    move v11, v3

    :goto_3
    sub-int/2addr v2, v11

    invoke-virtual {v10, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v2, v0

    invoke-virtual {v10, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_4
    invoke-virtual {v10, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-ne v5, v7, :cond_8

    :try_start_1
    invoke-static {v1, v8, v6, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :cond_8
    :try_start_2
    invoke-static {v1, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_3
    invoke-static {v15, v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v16

    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/EncodeException;->getError()I

    move-result v4

    const-string v5, "Exceed size limitation EncodeException"

    if-ne v4, v7, :cond_9

    invoke-static {v15, v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v16

    :cond_9
    :try_start_4
    invoke-static {v1, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v5, 0x3

    :goto_6
    const-string v1, "Message too long ("

    const/16 v4, 0x8

    if-ne v5, v7, :cond_b

    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa0

    if-le v5, v6, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " septets)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_a
    invoke-virtual {v10, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7

    :cond_b
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8c

    if-le v5, v6, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_c
    invoke-virtual {v10, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_7
    const/4 v1, 0x7

    new-array v5, v1, [B

    invoke-static/range {p3 .. p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v6

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v8

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    div-int/lit8 v6, v6, 0x3c

    div-int/lit8 v6, v6, 0xf

    if-gez v6, :cond_d

    move v11, v7

    goto :goto_8

    :cond_d
    move v11, v3

    :goto_8
    if-eqz v11, :cond_e

    neg-int v6, v6

    :cond_e
    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getYear()I

    move-result v12

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v13

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v15

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getHour()I

    move-result v16

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v17

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v8

    const/16 p0, 0x3

    const/16 v2, 0x7d0

    if-le v12, v2, :cond_f

    sub-int/2addr v12, v2

    goto :goto_9

    :cond_f
    add-int/lit16 v12, v12, -0x76c

    :goto_9
    rem-int/lit8 v2, v12, 0xa

    and-int/lit8 v2, v2, 0xf

    const/16 v18, 0x4

    shl-int/lit8 v2, v2, 0x4

    div-int/lit8 v12, v12, 0xa

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v2, v12

    int-to-byte v2, v2

    aput-byte v2, v5, v3

    rem-int/lit8 v2, v13, 0xa

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    div-int/lit8 v13, v13, 0xa

    and-int/lit8 v12, v13, 0xf

    or-int/2addr v2, v12

    int-to-byte v2, v2

    aput-byte v2, v5, v7

    rem-int/lit8 v2, v15, 0xa

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    div-int/lit8 v15, v15, 0xa

    and-int/lit8 v7, v15, 0xf

    or-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, v5, v14

    rem-int/lit8 v2, v16, 0xa

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    div-int/lit8 v16, v16, 0xa

    and-int/lit8 v7, v16, 0xf

    or-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, v5, p0

    rem-int/lit8 v2, v17, 0xa

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    div-int/lit8 v17, v17, 0xa

    and-int/lit8 v7, v17, 0xf

    or-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, v5, v18

    rem-int/lit8 v2, v8, 0xa

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    div-int/lit8 v8, v8, 0xa

    and-int/lit8 v7, v8, 0xf

    or-int/2addr v2, v7

    int-to-byte v2, v2

    const/4 v7, 0x5

    aput-byte v2, v5, v7

    rem-int/lit8 v2, v6, 0xa

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    div-int/lit8 v6, v6, 0xa

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v2, v6

    int-to-byte v2, v2

    const/4 v6, 0x6

    aput-byte v2, v5, v6

    if-eqz v11, :cond_10

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    :cond_10
    invoke-virtual {v10, v5, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v1, v0

    invoke-virtual {v10, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v9

    :catch_3
    move-exception v0

    invoke-static {v15, v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v16

    :catch_4
    move-exception v0

    invoke-static {v15, v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v16

    :cond_11
    :goto_a
    move-object/from16 v16, v2

    return-object v16
.end method

.method public static blacklist getRelativeValidityPeriod(I)I
    .locals 2

    const/4 v0, 0x5

    if-lt p0, v0, :cond_3

    const/16 v1, 0x2d0

    if-gt p0, v1, :cond_0

    div-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    const/16 v0, 0x5a0

    if-gt p0, v0, :cond_1

    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x1e

    add-int/lit16 p0, p0, 0x8f

    return p0

    :cond_1
    const v1, 0xa8c0

    if-gt p0, v1, :cond_2

    div-int/2addr p0, v0

    add-int/lit16 p0, p0, 0xa6

    return p0

    :cond_2
    const v0, 0x9b0a0

    if-gt p0, v0, :cond_3

    div-int/lit16 p0, p0, 0x2760

    add-int/lit16 p0, p0, 0xc0

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist getSubmitPdu(ILjava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1

    new-instance p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    iput p3, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    iput p4, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance p4, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {p4}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object p0, p4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p0

    array-length p4, p5

    array-length v0, p0

    add-int/2addr p4, v0

    add-int/lit8 p4, p4, 0x1

    const/16 v0, 0x8c

    if-le p4, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SMS data message may only contain "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    rsub-int p0, p0, 0x8b

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsMessage"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {p4}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/16 v0, 0x41

    invoke-static {p1, p2, v0, p6, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p4

    :cond_1
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p2, p5

    array-length p6, p0

    add-int/2addr p2, p6

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p2, p0

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p2, p0

    invoke-virtual {p1, p0, p3, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length p0, p5

    invoke-virtual {p1, p5, p3, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object p4
.end method

.method public static blacklist getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 12

    if-gtz p9, :cond_1

    if-lez p10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    move/from16 v10, p9

    move/from16 v11, p10

    new-instance v0, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput v10, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p9

    const-string v6, "getSubmitPdu with Options"

    const-string v7, "SmsMessage"

    invoke-static {v7, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-eqz v2, :cond_e

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string v8, "** getSubmitPdu_Options **"

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "mno = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "subId = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "replyPath = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "encodingType = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "**********************"

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v8}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/4 v9, 0x0

    if-eqz v3, :cond_1

    const/16 v10, 0x40

    goto :goto_0

    :cond_1
    move v10, v9

    :goto_0
    const/4 v11, 0x1

    or-int/2addr v10, v11

    int-to-byte v10, v10

    const-string/jumbo v12, "mtiByte = "

    if-eqz v4, :cond_2

    or-int/lit16 v4, v10, 0x80

    int-to-byte v10, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->useValidityPeriod(I)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "SMS not used TP-VPF  mtiByte = "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    or-int/lit8 v4, v10, 0x10

    int-to-byte v10, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v4, p1

    move/from16 v12, p4

    invoke-static {v4, v1, v10, v12, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    if-nez v1, :cond_4

    return-object v8

    :cond_4
    const-string v10, "CPW"

    const/16 v12, 0xa0

    const-string v13, "expirty = "

    if-eq v5, v11, :cond_8

    move/from16 v5, p10

    move/from16 v14, p11

    :try_start_0
    invoke-static {v2, v3, v5, v14}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v5

    aget-byte v14, v5, v9

    and-int/lit16 v14, v14, 0xff

    if-le v14, v12, :cond_5

    return-object v6

    :cond_5
    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->useValidityPeriod(I)Z

    move-result v14

    if-eqz v14, :cond_7

    sget-object v14, Lcom/android/internal/telephony/gsm/SmsMessage;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v14, :cond_6

    const/16 v14, 0xa7

    goto :goto_2

    :cond_6
    move/from16 v14, p7

    :goto_2
    :try_start_1
    invoke-virtual {v1, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move/from16 v14, p7

    :goto_3
    array-length v15, v5

    invoke-virtual {v1, v5, v9, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_0
    move/from16 v14, p7

    goto :goto_4

    :cond_8
    :try_start_2
    new-instance v5, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "Input Method is Unicode"

    invoke-direct {v5, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_1
    :goto_4
    :try_start_3
    invoke-static {v6, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v5

    const-string/jumbo v15, "sms_nsri_security_solution"

    invoke-virtual {v5, v15}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    const-string/jumbo v15, "utf-16be"

    if-eqz v5, :cond_9

    :try_start_4
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v4, 0xf1

    if-ne v5, v4, :cond_9

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v12, :cond_9

    const-string v4, "[NSRI_SMS_SEND] encoding 8859_1"

    invoke-static {v7, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "8859_1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    goto :goto_5

    :cond_9
    invoke-virtual {v2, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    :goto_5
    invoke-virtual {v2, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v3, :cond_a

    array-length v4, v3

    array-length v5, v2

    add-int/2addr v4, v5

    add-int/2addr v4, v11

    new-array v4, v4, [B

    array-length v5, v3

    int-to-byte v5, v5

    aput-byte v5, v4, v9

    array-length v5, v3

    invoke-static {v3, v9, v4, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v3, v11

    array-length v5, v2

    invoke-static {v2, v9, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v4

    :cond_a
    array-length v3, v2

    const/16 v4, 0x8c

    if-le v3, v4, :cond_b

    return-object v6

    :cond_b
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->useValidityPeriod(I)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/internal/telephony/gsm/SmsMessage;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v4, 0xa7

    goto :goto_6

    :cond_c
    move v4, v14

    :goto_6
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    array-length v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v0, v2

    invoke-virtual {v1, v2, v9, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v8

    :catch_2
    move-exception v0

    const-string v1, "Implausible UnsupportedEncodingException "

    invoke-static {v7, v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_8
    return-object v6
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 7

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/4 p2, 0x0

    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    array-length v1, p3

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8c

    if-le v1, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "SMS data message may only contain "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, v0

    rsub-int p1, p1, 0x8b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsMessage"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/16 v3, 0x41

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v5

    :cond_1
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p1, p3

    array-length p4, v0

    add-int/2addr p1, p4

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p1, v0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p1, v0

    invoke-virtual {p0, v0, p2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length p1, p3

    invoke-virtual {p0, p3, p2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v5
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v8, p4

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 10

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 17

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v0

    invoke-static {v2, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v3, "sms_segmented_sms"

    invoke-virtual {v0, v3}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p4

    :goto_0
    const/4 v3, 0x1

    const-string v4, "SmsMessage"

    const/4 v5, 0x0

    if-nez p5, :cond_5

    invoke-static {v1, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    iget v7, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    iget v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v6, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-ne v7, v3, :cond_6

    if-nez v8, :cond_2

    if-eqz v6, :cond_6

    :cond_2
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iget v10, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v10, v8, :cond_3

    iget v10, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eq v10, v6, :cond_6

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "Updating language table in SMS header: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v6, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v9}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v6, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    goto :goto_1

    :cond_5
    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v6, p7

    :cond_6
    :goto_1
    move-object v9, v0

    new-instance v14, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v14}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result v10

    if-eqz v9, :cond_7

    const/16 v0, 0x41

    int-to-byte v0, v0

    goto :goto_2

    :cond_7
    move v0, v3

    :goto_2
    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    :cond_8
    move-object/from16 v11, p1

    move/from16 v13, p3

    move/from16 v15, p9

    move v12, v0

    move-object/from16 v16, v2

    move v2, v10

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v10

    if-nez v10, :cond_9

    return-object v14

    :cond_9
    const-string v11, "Implausible UnsupportedEncodingException "

    if-ne v7, v3, :cond_a

    :try_start_0
    invoke-static {v1, v9, v8, v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_a
    :try_start_1
    invoke-static {v1, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v4, v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v16

    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/EncodeException;->getError()I

    move-result v6

    const-string v7, "Exceed size limitation EncodeException"

    if-ne v6, v3, :cond_b

    invoke-static {v4, v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v16

    :cond_b
    :try_start_3
    invoke-static {v1, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v7, 0x3

    :goto_4
    const-string v1, "Message too long ("

    if-ne v7, v3, :cond_d

    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v6, 0xa0

    if-le v3, v6, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " septets)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_c
    invoke-virtual {v10, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    :cond_d
    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v6, 0x8c

    if-le v3, v6, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_e
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_5
    const/4 v1, -0x1

    if-eq v2, v1, :cond_f

    invoke-virtual {v10, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_f
    array-length v1, v0

    invoke-virtual {v10, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v14, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v14

    :catch_2
    move-exception v0

    invoke-static {v4, v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v16

    :catch_3
    move-exception v0

    invoke-static {v4, v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v16

    :cond_10
    :goto_6
    move-object/from16 v16, v2

    return-object v16
.end method

.method public static blacklist getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    invoke-static {p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result p5

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ltz p5, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    shl-int/lit8 v5, v4, 0x3

    or-int/lit8 v5, v5, 0x1

    if-eqz p4, :cond_2

    const/16 p4, 0x40

    goto :goto_1

    :cond_2
    move p4, v3

    :goto_1
    or-int/2addr p4, v5

    int-to-byte p4, p4

    invoke-static {p0, p1, p4, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPackedForAutoLogin(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    aget-byte p2, p1, v3

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x8c

    if-le p2, p3, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Message too long ("

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsMessage"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-ne v4, v2, :cond_6

    invoke-virtual {p0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_6
    array-length p2, p1

    invoke-virtual {p0, p1, v3, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v1

    :cond_7
    :goto_2
    return-object v0
.end method

.method public static blacklist getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 7

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    if-nez p0, :cond_0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    :goto_0
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_1
    array-length v4, p1

    sub-int/2addr v4, p0

    mul-int/lit8 v4, v4, 0x2

    array-length v5, p1

    sub-int/2addr v5, p0

    aget-byte v5, p1, v5

    const/16 v6, 0xf0

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    move p0, v3

    :goto_1
    sub-int/2addr v4, p0

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p0, p1

    invoke-virtual {v1, p1, v3, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/16 p0, 0x7f

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    aget-byte p1, p0, v3

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0xa0

    if-le p1, p2, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p1, p0

    invoke-virtual {v1, p0, v3, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "SmsMessage"

    const-string p2, "Implausible UnsupportedEncodingException "

    invoke-static {p1, p2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private static greylist getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    iput-object v1, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    :goto_0
    if-eqz p3, :cond_1

    or-int/lit8 p0, p2, 0x20

    int-to-byte p2, p0

    :cond_1
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result p0

    invoke-static {v1, p0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DOCOMO"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->docomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p0

    :goto_1
    if-nez p0, :cond_3

    const-string p0, "SmsMessage"

    const-string p1, "daBytes is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    array-length p1, p0

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    array-length p3, p0

    sub-int/2addr p3, p2

    aget-byte p3, p0, p3

    const/16 p4, 0xf0

    and-int/2addr p3, p4

    const/4 p5, 0x0

    if-ne p3, p4, :cond_4

    goto :goto_2

    :cond_4
    move p2, p5

    :goto_2
    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p1, p0

    invoke-virtual {v0, p0, p5, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object v0
.end method

.method public static blacklist getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private blacklist parsePdu([B)V
    .locals 3

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->setSubIdforParser(I)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result p1

    and-int/lit8 v1, p1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupported message type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    return-void

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    return-void
.end method

.method private blacklist parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6

    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v3

    invoke-static {v0, v3}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v3, "sms_special_address_handling_for"

    invoke-virtual {v0, v3}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v3, "+00852"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v4, "+"

    iput-object v4, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v4, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    const/16 v0, 0x40

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void
.end method

.method private blacklist parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    move v2, v1

    :goto_0
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v1, 0x78

    if-nez v2, :cond_4

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    :cond_1
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    :cond_2
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/16 v1, 0x40

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    :cond_4
    return-void
.end method

.method private blacklist parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 4

    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/lit8 v0, p2, 0x3

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v0, v3

    goto :goto_1

    :cond_3
    const/16 v0, 0x40

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void
.end method

.method private blacklist parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x84

    const-string v7, " Dont store = "

    const-string/jumbo v8, "sms_support_gsm_8bit_sms"

    const v9, 0x111025d

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/4 v14, 0x2

    const-string v11, "SmsMessage"

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v10, 0x0

    if-ne v5, v6, :cond_0

    move v6, v10

    move/from16 v19, v13

    :goto_0
    move/from16 v4, v16

    goto/16 :goto_d

    :cond_0
    and-int/lit16 v5, v4, 0x80

    if-nez v5, :cond_a

    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_1

    move v5, v12

    goto :goto_1

    :cond_1
    move v5, v10

    :goto_1
    and-int/lit8 v6, v4, 0x10

    if-eqz v6, :cond_2

    move v6, v12

    goto :goto_2

    :cond_2
    move v6, v10

    :goto_2
    if-eqz v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v12, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    :goto_3
    move v4, v10

    goto/16 :goto_5

    :cond_3
    shr-int/2addr v4, v14

    and-int/2addr v4, v13

    if-eqz v4, :cond_9

    const-string/jumbo v5, "sms_support_ksc5601"

    if-eq v4, v12, :cond_5

    if-eq v4, v14, :cond_4

    if-eq v4, v13, :cond_7

    goto :goto_3

    :cond_4
    sput-boolean v10, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    move v4, v13

    goto/16 :goto_5

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v4

    invoke-static {v15, v4}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v4

    invoke-static {v15, v4}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v4, v14

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v4

    invoke-static {v15, v4}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move/from16 v4, v16

    goto :goto_4

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "1 - Unsupported SMS data coding scheme "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x10e01ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    :goto_4
    sput-boolean v10, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    goto :goto_5

    :cond_9
    sput-boolean v10, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    move v4, v12

    goto :goto_5

    :cond_a
    and-int/lit16 v5, v4, 0xf0

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_c

    sput-boolean v10, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_b

    move v4, v12

    move v6, v4

    :goto_5
    move/from16 v19, v13

    goto/16 :goto_d

    :cond_b
    move v6, v12

    move/from16 v19, v13

    move v4, v14

    goto/16 :goto_d

    :cond_c
    and-int/lit16 v5, v4, 0xf0

    const/16 v9, 0xc0

    if-eq v5, v9, :cond_10

    and-int/lit16 v5, v4, 0xf0

    move/from16 v19, v13

    const/16 v13, 0xd0

    if-eq v5, v13, :cond_11

    and-int/lit16 v5, v4, 0xf0

    const/16 v13, 0xe0

    if-ne v5, v13, :cond_d

    goto :goto_7

    :cond_d
    and-int/lit16 v5, v4, 0xc0

    const/16 v6, 0x80

    if-ne v5, v6, :cond_f

    shr-int/2addr v4, v14

    and-int/lit8 v4, v4, 0x3

    if-ne v4, v12, :cond_e

    sput-boolean v10, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    move v6, v10

    goto/16 :goto_0

    :cond_e
    sput-boolean v12, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "5 - Unsupported SMS data coding scheme "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "3 - Unsupported SMS data coding scheme "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v12, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    :goto_6
    move v4, v10

    move v6, v4

    goto/16 :goto_d

    :cond_10
    move/from16 v19, v13

    :cond_11
    :goto_7
    sput-boolean v10, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    and-int/lit16 v5, v4, 0xf0

    const/16 v13, 0xe0

    if-ne v5, v13, :cond_12

    move/from16 v5, v19

    goto :goto_8

    :cond_12
    move v5, v12

    :goto_8
    and-int/lit8 v13, v4, 0x8

    const/16 v14, 0x8

    if-ne v13, v14, :cond_13

    move v13, v12

    goto :goto_9

    :cond_13
    move v13, v10

    :goto_9
    and-int/lit8 v4, v4, 0x3

    if-nez v4, :cond_16

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v6

    if-ne v4, v9, :cond_14

    move v4, v12

    goto :goto_a

    :cond_14
    move v4, v10

    :goto_a
    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-ne v13, v12, :cond_15

    const/4 v4, -0x1

    iput v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_b

    :cond_15
    iput v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "MWI in DCS for Vmail. DCS = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " vmail count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_16
    iput-boolean v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "MWI in DCS for fax/email/other: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    move v4, v5

    move v6, v10

    :goto_d
    if-ne v4, v12, :cond_17

    move v5, v12

    goto :goto_e

    :cond_17
    move v5, v10

    :goto_e
    invoke-virtual {v1, v2, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReceivedEncodingType:I

    if-eqz v2, :cond_20

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_20

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    iget v14, v13, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0x80

    if-eqz v14, :cond_19

    if-ne v14, v15, :cond_18

    goto :goto_10

    :cond_18
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v10, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0xe0

    goto :goto_15

    :cond_19
    :goto_10
    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-ne v14, v15, :cond_1a

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto :goto_12

    :cond_1a
    iget-boolean v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-nez v10, :cond_1e

    iget v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v10, 0xf0

    const/16 v12, 0xd0

    if-eq v15, v12, :cond_1b

    and-int/lit16 v15, v10, 0xf0

    const/16 v12, 0xe0

    if-ne v15, v12, :cond_1c

    goto :goto_11

    :cond_1b
    const/16 v12, 0xe0

    :goto_11
    and-int/lit8 v10, v10, 0x3

    if-eqz v10, :cond_1d

    :cond_1c
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto :goto_13

    :cond_1d
    const/4 v10, 0x1

    goto :goto_13

    :cond_1e
    :goto_12
    move v10, v12

    const/16 v12, 0xe0

    :goto_13
    iget v13, v13, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v13, v13, 0xff

    iput v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    if-lez v13, :cond_1f

    iput-boolean v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    goto :goto_14

    :cond_1f
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    :goto_14
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " Vmail count = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x0

    goto/16 :goto_f

    :cond_20
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v7

    const/4 v9, 0x0

    invoke-static {v9, v7}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v7

    const-string/jumbo v9, "sms_support_reply_address"

    invoke-virtual {v7, v9}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v7, :cond_23

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :cond_21
    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    iget v12, v10, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    const/16 v13, 0x22

    if-ne v12, v13, :cond_21

    iget v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    if-nez v12, :cond_21

    iget-object v9, v10, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v9, v9

    const/4 v12, 0x2

    if-le v9, v12, :cond_22

    :try_start_0
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v12, v10, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v10, v10, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v10, v10

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13, v10}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_17

    :catch_0
    const-string v9, "GsmSmsAddress FAIL!"

    invoke-static {v11, v9}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_22
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v9, "SMS replyAddress: null"

    invoke-static {v11, v9}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    const/4 v9, 0x1

    goto :goto_16

    :cond_23
    const/4 v9, 0x0

    :cond_24
    if-nez v9, :cond_25

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v7, "hasReplayAddress = false, SMS replayAddress = mOriginatingAddress"

    invoke-static {v11, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v7

    const/4 v9, 0x0

    invoke-static {v9, v7}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string v9, "SKT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_27

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v7, :cond_27

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move/from16 v9, v19

    if-le v7, v9, :cond_27

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v7, v7, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const-string v10, "0"

    const/4 v12, 0x1

    if-ne v7, v12, :cond_26

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v9, "+82"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v12, "\\+82"

    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_26
    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v7, v7, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v12, 0x1

    if-ne v7, v12, :cond_27

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v9, "82"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v12, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_27
    if-eqz v4, :cond_33

    const/4 v12, 0x1

    if-eq v4, v12, :cond_2f

    const/4 v12, 0x2

    if-eq v4, v12, :cond_2c

    const/4 v9, 0x3

    if-eq v4, v9, :cond_29

    move/from16 v2, v16

    if-eq v4, v2, :cond_28

    :goto_18
    const/4 v9, 0x0

    goto/16 :goto_1c

    :cond_28
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_18

    :cond_29
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_2b

    add-int/lit8 v4, v3, -0x2

    aget-byte v7, v2, v4

    and-int/lit16 v7, v7, 0xff

    const/16 v17, 0x8

    shl-int/lit8 v7, v7, 0x8

    int-to-char v7, v7

    const/16 v20, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-byte v8, v2, v3

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    or-int/2addr v7, v8

    int-to-char v7, v7

    const v8, 0xd83d

    if-eq v7, v8, :cond_2a

    const v8, 0xd83c

    if-eq v7, v8, :cond_2a

    const v8, 0xd83e

    if-ne v7, v8, :cond_2b

    :cond_2a
    const-string v7, "found emoji"

    invoke-static {v11, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x2

    new-array v7, v12, [B

    iput-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mlastByte:[B

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mlastByte:[B

    aget-byte v4, v2, v4

    const/16 v18, 0x0

    aput-byte v4, v7, v18

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mlastByte:[B

    aget-byte v2, v2, v3

    const/4 v12, 0x1

    aput-byte v2, v4, v12

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsfourBytesUnicode:Z

    :cond_2b
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_18

    :cond_2c
    const v2, 0x111025d

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v2

    const/4 v9, 0x0

    invoke-static {v9, v2}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_19

    :cond_2d
    iput-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_1c

    :cond_2e
    :goto_19
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_18

    :cond_2f
    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v3, :cond_32

    if-eqz v2, :cond_30

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v10, v3, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto :goto_1a

    :cond_30
    const/4 v10, 0x0

    :goto_1a
    if-eqz v2, :cond_31

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto :goto_1b

    :cond_31
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v1, v5, v10, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_18

    :cond_32
    const/4 v13, 0x0

    invoke-virtual {v1, v5, v13, v13}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_18

    :cond_33
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    :goto_1c
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v1

    invoke-static {v9, v1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v2, 0xc00a

    if-ne v1, v2, :cond_34

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSpecificTid(I)V

    :cond_34
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v1, :cond_36

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v1

    const/4 v9, 0x0

    invoke-static {v9, v1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DOCOMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    const-string v2, "\r\n"

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    :cond_35
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    :cond_36
    if-nez v6, :cond_37

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_1d

    :cond_37
    iget v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/4 v9, 0x3

    and-int/2addr v1, v9

    if-eqz v1, :cond_3b

    const/4 v12, 0x1

    if-eq v1, v12, :cond_3a

    const/4 v12, 0x2

    if-eq v1, v12, :cond_39

    if-eq v1, v9, :cond_38

    goto :goto_1d

    :cond_38
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_1d

    :cond_39
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_1d

    :cond_3a
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_1d

    :cond_3b
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    :goto_1d
    return-void
.end method

.method public static greylist semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 3

    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId(I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->setSubId(I)V

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    const-string p1, "SMS PDU parsing failed with out of memory: "

    invoke-static {v0, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception p0

    const-string p1, "SMS PDU parsing failed: "

    invoke-static {v0, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private static blacklist useValidityPeriod(I)Z
    .locals 4

    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    invoke-static {v1, p0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object p0

    const-string/jumbo v1, "sms_not_used_validity_period_format"

    invoke-virtual {p0, v1}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "satellite_mode_enabled"

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Do not use TP-VP for Tiantong"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SecurityException during get setting DB"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method


# virtual methods
.method protected blacklist extractPaginationForGsm()V
    .locals 15

    const-string v0, "extractPagination : "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsMessage"

    if-nez v1, :cond_0

    const-string/jumbo p0, "there is no message body"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v5

    const/16 v6, 0x29

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v5

    const/16 v6, 0x5d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v5

    const/16 v6, 0x7d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "there is no pagination pattern maybe / or of "

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_b

    const/4 v3, 0x0

    :goto_0
    const-string/jumbo v6, "there is no pagination yet"

    const-string v7, "/"

    const/4 v8, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v4, :cond_4

    :try_start_1
    aget-object v1, v0, v8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v8

    goto :goto_1

    :catch_0
    move v1, v8

    :catch_1
    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    move v5, v0

    :goto_1
    move v8, v1

    goto/16 :goto_b

    :cond_4
    move v0, v8

    move v5, v0

    goto/16 :goto_b

    :cond_5
    const-string v3, " of "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v9, 0x3

    if-lt v3, v4, :cond_6

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v10, v3

    if-lt v10, v9, :cond_6

    :try_start_3
    aget-object v10, v3, v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    aget-object v11, v3, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    aget-object v12, v3, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v12, v3

    add-int/lit8 v12, v12, 0x5

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    move v3, v5

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    move v11, v8

    goto :goto_2

    :catch_4
    move v11, v8

    goto :goto_3

    :catch_5
    move-exception v3

    move v10, v8

    move v11, v10

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_6
    move v10, v8

    move v11, v10

    :catch_7
    :goto_3
    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v3, v8

    goto :goto_5

    :cond_6
    move v3, v8

    move v10, v3

    move v11, v10

    :goto_5
    if-nez v3, :cond_c

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-lt v7, v4, :cond_c

    aget-object v7, v6, v5

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    :try_start_6
    aget-object v11, v6, v8

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_8

    move v11, v8

    move v12, v11

    :goto_6
    :try_start_7
    aget-char v13, v7, v12

    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-eqz v13, :cond_b

    if-nez v12, :cond_7

    aget-char v13, v7, v12

    invoke-static {v13}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v11

    goto :goto_8

    :cond_7
    if-ne v12, v5, :cond_8

    aget-char v13, v7, v8

    invoke-static {v13}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    aget-char v14, v7, v5

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v11

    :goto_7
    add-int/2addr v11, v13

    goto :goto_8

    :cond_8
    if-ne v12, v4, :cond_9

    aget-char v13, v7, v8

    invoke-static {v13}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    mul-int/lit8 v13, v13, 0x64

    aget-char v14, v7, v5

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v13, v14

    aget-char v14, v7, v4

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v11

    goto :goto_7

    :cond_9
    if-ne v12, v9, :cond_a

    aget-char v13, v7, v8

    invoke-static {v13}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    mul-int/lit16 v13, v13, 0x3e8

    aget-char v14, v7, v5

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    add-int/2addr v13, v14

    aget-char v14, v7, v4

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v13, v14

    aget-char v14, v7, v9

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v11

    goto :goto_7

    :cond_a
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_b
    aget-object v4, v6, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v12

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_9
    move v11, v8

    :catch_a
    move v8, v10

    const-string/jumbo v0, "there is no pagination"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    goto :goto_a

    :cond_c
    move v5, v3

    :goto_9
    move v8, v10

    :goto_a
    move v0, v11

    :goto_b
    if-nez v5, :cond_d

    const-string p0, "No pagination found"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "segmented number: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "total number: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x270f

    if-gez v8, :cond_e

    if-gt v8, v1, :cond_f

    :cond_e
    if-gez v0, :cond_10

    if-le v8, v1, :cond_10

    :cond_f
    const-string p0, "Its not segmented sms. "

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    if-eqz v8, :cond_11

    if-eqz v0, :cond_11

    if-gt v8, v0, :cond_11

    if-gt v0, v1, :cond_11

    const-string v1, "It\'s segmented sms"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    iput v8, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v0, -0x1

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    new-instance v0, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto :goto_c

    :cond_11
    const-string p0, "It\'s not segmented sms."

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void

    :catch_b
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getDataCodingScheme()I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return p0
.end method

.method public blacklist getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object p0
.end method

.method public blacklist getMessageIdentifier()I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    return p0
.end method

.method public blacklist getMessagePriority()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getNumOfVoicemails()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    :goto_0
    const-string v0, "SmsMessage"

    const-string v1, "CPHS voice mail message"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return p0
.end method

.method public blacklist getProtocolIdentifier()I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return p0
.end method

.method public greylist-max-r getStatus()I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return p0
.end method

.method public blacklist isCphsMwiMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isMWIClearMessage()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isMWISetMessage()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isMwiDontStore()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v2, "sms_not_count_voicemail"

    invoke-virtual {v0, v2}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/SmsMessage;->SALES_CODE:Ljava/lang/String;

    const-string v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "MTA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "CPHS MWI messages in Canada "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " don\'t store"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmsMessage"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isReplace()Z
    .locals 2

    iget p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p0, 0x3f

    if-lez v0, :cond_0

    and-int/lit8 p0, p0, 0x3f

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isReplyPathPresent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return p0
.end method

.method public greylist-max-r isStatusReportMessage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return p0
.end method

.method public blacklist isTypeZero()Z
    .locals 1

    iget p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist isUsimDataDownload()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7c

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
