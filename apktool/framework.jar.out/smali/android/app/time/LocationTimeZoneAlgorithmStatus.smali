.class public final Landroid/app/time/LocationTimeZoneAlgorithmStatus;
.super Ljava/lang/Object;
.source "LocationTimeZoneAlgorithmStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/LocationTimeZoneAlgorithmStatus$ProviderStatus;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/LocationTimeZoneAlgorithmStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NOT_RUNNING:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

.field public static final blacklist NOT_SUPPORTED:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

.field public static final blacklist PROVIDER_STATUS_IS_CERTAIN:I = 0x3

.field public static final blacklist PROVIDER_STATUS_IS_UNCERTAIN:I = 0x4

.field public static final blacklist PROVIDER_STATUS_NOT_PRESENT:I = 0x1

.field public static final blacklist PROVIDER_STATUS_NOT_READY:I = 0x2

.field public static final blacklist RUNNING_NOT_REPORTED:Landroid/app/time/LocationTimeZoneAlgorithmStatus;


# instance fields
.field private final blacklist mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

.field private final blacklist mPrimaryProviderStatus:I

.field private final blacklist mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

.field private final blacklist mSecondaryProviderStatus:I

.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    new-instance v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;-><init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V

    sput-object v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->NOT_SUPPORTED:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    new-instance v1, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;-><init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V

    sput-object v1, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->RUNNING_NOT_REPORTED:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    new-instance v2, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;-><init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V

    sput-object v2, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->NOT_RUNNING:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    new-instance v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus$1;

    invoke-direct {v0}, Landroid/app/time/LocationTimeZoneAlgorithmStatus$1;-><init>()V

    sput-object v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/time/DetectorStatusTypes;->requireValidDetectionAlgorithmStatus(I)I

    move-result v0

    iput v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    invoke-static {p2}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->requireValidProviderStatus(I)I

    move-result v0

    iput v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    iput-object p3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-static {p4}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->requireValidProviderStatus(I)I

    move-result v0

    iput v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    iput-object p5, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-static {p2}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->hasProviderReported(I)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p0, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "primaryProviderReportedStatus="

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", primaryProviderStatus="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->providerStatusToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-static {p4}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->hasProviderReported(I)Z

    move-result p2

    if-eqz p5, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-nez p2, :cond_5

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "secondaryProviderReportedStatus="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", secondaryProviderStatus="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->providerStatusToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    const/4 p4, 0x3

    if-eq p1, p4, :cond_7

    if-nez p0, :cond_6

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "algorithmStatus="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/app/time/DetectorStatusTypes;->detectionAlgorithmStatusToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", primaryProviderReportedStatus="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", secondaryProviderReportedStatus="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    return-void
.end method

.method private static blacklist hasProviderReported(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist parseCommandlineArg(Ljava/lang/String;)Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    .locals 7

    const-string v0, "LocationTimeZoneAlgorithmStatus\\{mAlgorithmStatus=(.+), mPrimaryProviderStatus=([^,]+), mPrimaryProviderReportedStatus=(null|TimeZoneProviderStatus\\{[^}]+\\}), mSecondaryProviderStatus=([^,]+), mSecondaryProviderReportedStatus=(null|TimeZoneProviderStatus\\{[^}]+\\})\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/time/DetectorStatusTypes;->detectionAlgorithmStatusFromString(Ljava/lang/String;)I

    move-result v2

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->providerStatusFromString(Ljava/lang/String;)I

    move-result v3

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->parseTimeZoneProviderStatusOrNull(Ljava/lang/String;)Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v4

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->providerStatusFromString(Ljava/lang/String;)I

    move-result v5

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->parseTimeZoneProviderStatusOrNull(Ljava/lang/String;)Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v6

    new-instance v1, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    invoke-direct/range {v1 .. v6}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;-><init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse algorithm status arg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist parseTimeZoneProviderStatusOrNull(Ljava/lang/String;)Landroid/service/timezone/TimeZoneProviderStatus;
    .locals 1

    const-string/jumbo v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/service/timezone/TimeZoneProviderStatus;->parseProviderStatus(Ljava/lang/String;)Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist providerStatusFromString(Ljava/lang/String;)I
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "IS_UNCERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "NOT_READY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "NOT_PRESENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "IS_CERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    return v2

    :pswitch_2
    return v3

    :pswitch_3
    return v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Empty status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x65a48193 -> :sswitch_3
        0xb2f770f -> :sswitch_2
        0x3da260f7 -> :sswitch_1
        0x530e36f4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist providerStatusToString(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const-string p0, "IS_UNCERTAIN"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "IS_CERTAIN"

    return-object p0

    :cond_2
    const-string p0, "NOT_READY"

    return-object p0

    :cond_3
    const-string p0, "NOT_PRESENT"

    return-object p0
.end method

.method public static blacklist requireValidProviderStatus(I)I
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid provider status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist couldEnableTelephonyFallback()Z
    .locals 5

    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    const/4 v3, 0x4

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderStatus;->couldEnableTelephonyFallback()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget v4, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    if-ne v4, v2, :cond_3

    move p0, v2

    goto :goto_1

    :cond_3
    if-ne v4, v3, :cond_4

    iget-object p0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderStatus;->couldEnableTelephonyFallback()Z

    move-result p0

    goto :goto_1

    :cond_4
    move p0, v1

    :goto_1
    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

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
    check-cast p1, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    iget v2, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    iget v3, p1, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    iget v3, p1, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    iget-object v3, p1, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    iget v3, p1, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    iget-object p1, p1, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getPrimaryProviderReportedStatus()Landroid/service/timezone/TimeZoneProviderStatus;
    .locals 0

    iget-object p0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    return-object p0
.end method

.method public blacklist getPrimaryProviderStatus()I
    .locals 0

    iget p0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    return p0
.end method

.method public blacklist getSecondaryProviderReportedStatus()Landroid/service/timezone/TimeZoneProviderStatus;
    .locals 0

    iget-object p0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    return-object p0
.end method

.method public blacklist getSecondaryProviderStatus()I
    .locals 0

    iget p0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    return p0
.end method

.method public blacklist getStatus()I
    .locals 0

    iget p0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    iget v3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationTimeZoneAlgorithmStatus{mAlgorithmStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    invoke-static {v1}, Landroid/app/time/DetectorStatusTypes;->detectionAlgorithmStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimaryProviderStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    invoke-static {v1}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->providerStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimaryProviderReportedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondaryProviderStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    invoke-static {v1}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->providerStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondaryProviderReportedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
