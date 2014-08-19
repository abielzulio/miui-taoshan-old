.class public Landroid/content/SyncRequest;
.super Ljava/lang/Object;
.source "SyncRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncRequest"


# instance fields
.field private final mAccountToSync:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mComponentInfo:Landroid/content/ComponentName;

.field private final mDisallowMetered:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIsAuthority:Z

.field private final mIsExpedited:Z

.field private final mIsPeriodic:Z

.field private final mRxBytes:J

.field private final mSyncFlexTimeSecs:J

.field private final mSyncRunTimeSecs:J

.field private final mTxBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/content/SyncRequest$1;

    invoke-direct {v0}, Landroid/content/SyncRequest$1;-><init>()V

    sput-object v0, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/SyncRequest$Builder;)V
    .locals 5
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$100(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    #getter for: Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$200(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    #getter for: Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$300(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    #getter for: Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$400(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    #getter for: Landroid/content/SyncRequest$Builder;->mComponentName:Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$500(Landroid/content/SyncRequest$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mComponentInfo:Landroid/content/ComponentName;

    #getter for: Landroid/content/SyncRequest$Builder;->mSyncType:I
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$600(Landroid/content/SyncRequest$Builder;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    #getter for: Landroid/content/SyncRequest$Builder;->mSyncTarget:I
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$700(Landroid/content/SyncRequest$Builder;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    #getter for: Landroid/content/SyncRequest$Builder;->mExpedited:Z
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$800(Landroid/content/SyncRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    new-instance v0, Landroid/os/Bundle;

    #getter for: Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$900(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    #getter for: Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$1000(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #getter for: Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$1100(Landroid/content/SyncRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    #getter for: Landroid/content/SyncRequest$Builder;->mTxBytes:J
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$1200(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncRequest;->mTxBytes:J

    #getter for: Landroid/content/SyncRequest$Builder;->mRxBytes:J
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$1300(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncRequest;->mRxBytes:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncRequest;->mTxBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncRequest;->mRxBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    if-eqz v0, :cond_4

    iput-object v5, p0, Landroid/content/SyncRequest;->mComponentInfo:Landroid/content/ComponentName;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    :goto_4
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/SyncRequest;->mComponentInfo:Landroid/content/ComponentName;

    iput-object v5, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    iput-object v5, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/SyncRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/SyncRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/content/SyncRequest;->hasAuthority()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot getAccount() for a sync that does notspecify an authority."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/content/SyncRequest;->hasAuthority()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot getProvider() for a sync that does notspecify a provider."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncFlexTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    return-wide v0
.end method

.method public getSyncRunTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    return-wide v0
.end method

.method public hasAuthority()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    return v0
.end method

.method public isExpedited()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    return v0
.end method

.method public isPeriodic()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-wide v3, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Landroid/content/SyncRequest;->mTxBytes:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Landroid/content/SyncRequest;->mRxBytes:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/content/SyncRequest;->mComponentInfo:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_4
.end method
