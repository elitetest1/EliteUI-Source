.class public final synthetic Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/NtpTrustedTime;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/NtpTrustedTime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda1;->f$0:Landroid/util/NtpTrustedTime;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda1;->f$0:Landroid/util/NtpTrustedTime;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Landroid/util/NtpTrustedTime;->$r8$lambda$17QIPXcAoMHgcCbhBpO5cTWPLdA(Landroid/util/NtpTrustedTime;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
