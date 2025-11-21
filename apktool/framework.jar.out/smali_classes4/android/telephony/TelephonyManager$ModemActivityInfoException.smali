.class public Landroid/telephony/TelephonyManager$ModemActivityInfoException;
.super Ljava/lang/Exception;
.source "TelephonyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModemActivityInfoException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$ModemActivityInfoException$ModemActivityInfoError;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_INVALID_INFO_RECEIVED:I = 0x2

.field public static final whitelist ERROR_MODEM_RESPONSE_ERROR:I = 0x3

.field public static final whitelist ERROR_PHONE_NOT_AVAILABLE:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .locals 0

    iget p0, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNDEFINED"

    return-object p0

    :cond_0
    const-string p0, "ERROR_MODEM_RESPONSE_ERROR"

    return-object p0

    :cond_1
    const-string p0, "ERROR_INVALID_INFO_RECEIVED"

    return-object p0

    :cond_2
    const-string p0, "ERROR_PHONE_NOT_AVAILABLE"

    return-object p0

    :cond_3
    const-string p0, "ERROR_UNKNOWN"

    return-object p0
.end method
