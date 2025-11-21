.class public interface abstract Landroid/content/pm/verify/domain/DomainVerificationState;
.super Ljava/lang/Object;
.source "DomainVerificationState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/DomainVerificationState$State;
    }
.end annotation


# static fields
.field public static final blacklist STATE_APPROVED:I = 0x2

.field public static final blacklist STATE_DENIED:I = 0x3

.field public static final blacklist STATE_FIRST_VERIFIER_DEFINED:I = 0x400

.field public static final blacklist STATE_LEGACY_FAILURE:I = 0x6

.field public static final blacklist STATE_MIGRATED:I = 0x4

.field public static final blacklist STATE_NO_RESPONSE:I = 0x0

.field public static final blacklist STATE_PRE_VERIFIED:I = 0x8

.field public static final blacklist STATE_RESTORED:I = 0x5

.field public static final blacklist STATE_SUCCESS:I = 0x1

.field public static final blacklist STATE_SYS_CONFIG:I = 0x7


# direct methods
.method public static blacklist convertToInfoState(I)I
    .locals 1

    const/16 v0, 0x400

    if-lt p0, v0, :cond_0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    invoke-static {p0}, Landroid/content/pm/verify/domain/DomainVerificationState;->isModifiable(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    invoke-static {p0}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0
.end method

.method public static blacklist isDefault(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist isModifiable(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    const/16 v2, 0x400

    if-lt p0, v2, :cond_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    return v1

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist isVerified(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static blacklist shouldMigrate(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static blacklist stateToDebugString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "pre_verified"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "system_configured"

    return-object p0

    :pswitch_2
    const-string p0, "legacy_failure"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "restored"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "migrated"

    return-object p0

    :pswitch_5
    const-string p0, "denied"

    return-object p0

    :pswitch_6
    const-string p0, "approved"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "verified"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "none"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
