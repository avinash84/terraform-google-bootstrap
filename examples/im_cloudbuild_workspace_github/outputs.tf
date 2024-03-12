/**
 * Copyright 2024 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "project_id" {
  value = var.project_id
}

output "cloudbuild_preview_trigger_id" {
  description = "Trigger used for creating IM previews"
  value       = module.im_workspace.cloudbuild_preview_trigger_id
}

output "cloudbuild_apply_trigger_id" {
  description = "Trigger used for running IM apply"
  value       = module.im_workspace.cloudbuild_apply_trigger_id
}

output "cloudbuild_sa" {
  description = "Service account used by the Cloud Build triggers"
  value       = module.im_workspace.cloudbuild_sa
}

output "infra_manager_sa" {
  description = "Service account used by Infrastructure Manager"
  value       = module.im_workspace.infra_manager_sa
}

output "github_secret_id" {
  description = "The secret ID for the GitHub secret containing the personal access token."
  value       = module.im_workspace.github_secret_id
  sensitive   = true
}
