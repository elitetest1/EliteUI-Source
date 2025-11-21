.class public abstract Lcom/android/internal/telephony/SmsAddress;
.super Ljava/lang/Object;
.source "SmsAddress.java"


# static fields
.field public static final greylist-max-o TON_ABBREVIATED:I = 0x6

.field public static final greylist-max-o TON_ALPHANUMERIC:I = 0x5

.field public static final greylist-max-o TON_INTERNATIONAL:I = 0x1

.field public static final greylist-max-o TON_NATIONAL:I = 0x2

.field public static final greylist-max-o TON_NETWORK:I = 0x3

.field public static final greylist-max-o TON_SUBSCRIBER:I = 0x4

.field public static final greylist-max-o TON_UNKNOWN:I


# instance fields
.field public greylist-max-o address:Ljava/lang/String;

.field public greylist origBytes:[B

.field public greylist-max-o ton:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o couldBeEmailGateway()Z
    .locals 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o getAddressString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o isAlphanumeric()Z
    .locals 1

    iget p0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o isNetworkSpecific()Z
    .locals 1

    iget p0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
