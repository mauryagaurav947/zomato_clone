
//Search result model
class SearchData {
  String id,
      name,
      countryId,
      countryName,
      countryFlagUrl,
      shouldExperimentWith,
      hasGoOutTab,
      discoveryEnabled,
      hasNewAdFormat,
      isState,
      stateId,
      stateName,
      stateCode;

  SearchData(
      {this.id,
      this.name,
      this.countryId,
      this.countryName,
      this.countryFlagUrl,
      this.shouldExperimentWith,
      this.hasGoOutTab,
      this.discoveryEnabled,
      this.hasNewAdFormat,
      this.isState,
      this.stateId,
      this.stateName,
      this.stateCode});

  SearchData.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    name = json['name']?.toString();
    countryId = json['country_id']?.toString();
    countryName = json['country_name']?.toString();
    countryFlagUrl = json['country_flag_url']?.toString();
    shouldExperimentWith = json['should_experiment_with']?.toString();
    hasGoOutTab = json['has_go_out_tab']?.toString();
    discoveryEnabled = json['discovery_enabled']?.toString();
    hasNewAdFormat = json['has_new_ad_format']?.toString();
    isState = json['is_state']?.toString();
    stateId = json['state_id']?.toString();
    stateName = json['state_name']?.toString();
    stateCode = json['state_code']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['country_id'] = this.countryId;
    data['country_name'] = this.countryName;
    data['country_flag_url'] = this.countryFlagUrl;
    data['should_experiment_with'] = this.shouldExperimentWith;
    data['has_go_out_tab'] = this.hasGoOutTab;
    data['discovery_enabled'] = this.discoveryEnabled;
    data['has_new_ad_format'] = this.hasNewAdFormat;
    data['is_state'] = this.isState;
    data['state_id'] = this.stateId;
    data['state_name'] = this.stateName;
    data['state_code'] = this.stateCode;
    return data;
  }
}
